import numpy as np
import torch
from torch import nn
from torch.nn import functional as F

import matplotlib.pyplot as plt
import gym
 

class PolicyNet(nn.Module):
    def __init__(self, n_states, n_hiddens, n_actions):
        super(PolicyNet, self).__init__()
        self.fc1 = nn.Linear(n_states, n_hiddens)
        self.fc2 = nn.Linear(n_hiddens, n_actions)
    def forward(self, x):
        mask = x[:, :45]
        x = self.fc1(x)  # [b,n_states]-->[b,n_hiddens]
        x = F.relu(x)
        x = self.fc2(x)  # [b, n_actions]
        x[mask == 1] = -float('inf') # Mask
        x = F.softmax(x, dim=1)  # [b, n_actions] 
        return x
 
class ValueNet(nn.Module):
    def __init__(self, n_states, n_hiddens):
        super(ValueNet, self).__init__()
        self.fc1 = nn.Linear(n_states, n_hiddens)
        self.fc2 = nn.Linear(n_hiddens, 1)
    def forward(self, x):
        x = self.fc1(x)  # [b,n_states]-->[b,n_hiddens]
        x = F.relu(x)
        x = self.fc2(x)  # [b,n_hiddens]-->[b,1]  
        return x
 
class PPO:
    def __init__(self, n_states, n_hiddens, n_actions,
                 actor_lr, critic_lr, lmbda, epochs, eps, gamma, device):
        self.actor = PolicyNet(n_states, n_hiddens, n_actions).to(device)
        self.critic = ValueNet(n_states, n_hiddens).to(device)
        self.actor_optimizer = torch.optim.Adam(self.actor.parameters(), lr=actor_lr)
        self.critic_optimizer = torch.optim.Adam(self.critic.parameters(), lr = critic_lr)
 
        self.gamma = gamma 
        self.lmbda = lmbda 
        self.epochs = epochs 
        self.eps = eps  
        self.device = device
 
    def take_action(self, state):
        state = torch.tensor(state[np.newaxis, :]).float().to(self.device)
        probs = self.actor(state)
        action_list = torch.distributions.Categorical(probs)
        action = action_list.sample().item()
        return action
 
    def learn(self, transition_dict):
        states = torch.tensor(transition_dict['states'], dtype=torch.float).to(self.device)
        actions = torch.tensor(transition_dict['actions']).to(self.device).view(-1,1)
        rewards = torch.tensor(transition_dict['rewards'], dtype=torch.float).to(self.device).view(-1,1)
        next_states = torch.tensor(transition_dict['next_states'], dtype=torch.float).to(self.device)
        dones = torch.tensor(transition_dict['dones'], dtype=torch.float).to(self.device).view(-1,1)
 
        next_q_target = self.critic(next_states)
        td_target = rewards + self.gamma * next_q_target * (1-dones)
        td_value = self.critic(states)
        td_delta = td_target - td_value
 
        td_delta = td_delta.cpu().detach().numpy()
        advantage = 0  
        advantage_list = []
 
        for delta in td_delta[::-1]: 
            advantage = self.gamma * self.lmbda * advantage + delta
            advantage_list.append(advantage)
        advantage_list.reverse()
        # numpy --> tensor [b,1]
        advantage = torch.tensor(advantage_list, dtype=torch.float).to(self.device)
 
        old_log_probs = torch.log(self.actor(states).gather(1, actions)).detach()
 
        for _ in range(self.epochs):
            log_probs = torch.log(self.actor(states).gather(1, actions))
            ratio = torch.exp(log_probs - old_log_probs)
            surr1 = ratio * advantage
            surr2 = torch.clamp(ratio, 1-self.eps, 1+self.eps) * advantage
            
            actor_loss = torch.mean(-torch.min(surr1, surr2))
            critic_loss = torch.mean(F.mse_loss(self.critic(states), td_target.detach()))
 
            self.actor_optimizer.zero_grad()
            self.critic_optimizer.zero_grad()
            actor_loss.backward()
            critic_loss.backward()
            self.actor_optimizer.step()
            self.critic_optimizer.step()