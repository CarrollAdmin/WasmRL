from wasm_env import WASMEnv
from gymnasium.envs.registration import register
import gymnasium
from ppo import *
import matplotlib.pyplot as plt
from runtime import *

bms = [
        # "2mm",
        # "3mm",
        # "adi",
        # "atax",
        # "bicg",
        # "cholesky",
        # "correlation",
        # "covariance",
        # "deriche",
        # "doitgen",
        # "durbin",
        # "fdtd-2d",
        # "floyd-warshall",
        # "gemm",
        # "gemver",    
        # "gesummv",
        # "gramschmidt",
        # "heat-3d",
        # "jacobi-1d",
        # "jacobi-2d",
        # "lu",     
        # "ludcmp",
        # "mvt",
        # "nussinov",
        # "seidel-2d",
        # "symm",
        # "syr2k",
        # "syrk",
        # "trisolv",
        # "trmm",
        # "test"
    ]

# bms = [
#     "automotive_bitcount", # (1.91)
#     # "automotive_qsort1", # (0.032)
#     "automotive_susan_c",# (1.169)
#     # "consumer_jpeg_c", # (1.115)
#     # "consumer_jpeg_d", # (0.963)
#     "consumer_tiff2bw", # (1.339)
#     "consumer_tiffdither",# (0.724)
#     "consumer_tiffmedian",# (0.702)
#     "network_dijkstra",# (1.001)
#     "network_patricia",# (0.642)
#     "office_stringsearch1",# (0.728)
#     "security_blowfish_d",# (1.647)
#     "security_rijndael_d",# (0.985)
#     "security_sha",# (1.191)
#     "telecom_adpcm_c",# (0.818)
#     "telecom_CRC32",# (0.567)
#     # "telecom_gsm",# (1.498)
# ]

bms = [
    # "shootout-base64",
    # "shootout-ctype",
    # "shootout-fib2",
    # "shootout-gimli",
    # "shootout-matrix",
    # "shootout-memmove",
    # "shootout-nestedloop",
    # "shootout-random"
]

bms = [
    "compression1",
    # "heat_calib",
    # "heat_detect",
    # "quality",
    # "facedetection",
]
muti_envs = len(bms)
envs = []
envs_n_states = []
prior_pass_all = {}
envs_n_actions = []

for bm in bms:
    key = f'{bm}'
    prior_pass_all[key] = []

for i in range(0, muti_envs):
    env_name = 'WASMEnv-v' + str(i)
    env_configs = {}
    pgm = bms[i]
    env_configs['pgm'] = pgm
    env_configs['device'] = "jetsonnano"

    register(
        id= env_name,
        entry_point = 'wasm_gym.envs:WASMEnv',
        kwargs={'env_config':env_configs},
        max_episode_steps=3000,
    )

    env = gymnasium.make(env_name)
    n_states = env.observation_space.shape[0]  
    n_actions = env.action_space.n  
    envs.append(env)
    envs_n_states.append(n_states)
    envs_n_actions.append(n_actions)

num_episodes = 20000  
gamma = 0.9  
actor_lr = 1e-3  
critic_lr = 1e-2  
n_hiddens = 16  
n_states = envs_n_states[0]
n_actions = envs_n_actions[0]
device = torch.device('cuda') if torch.cuda.is_available() \
                            else torch.device('cpu')
agent = PPO(n_states=n_states,  
            n_hiddens=n_hiddens,  
            n_actions=n_actions,  
            actor_lr=actor_lr,  
            critic_lr=critic_lr,  
            lmbda = 0.95,  
            epochs = 10, 
            eps = 0.2,  
            gamma=gamma,  
            device = device
            )

# pretrained model loading

# agent.actor.load_state_dict(torch.load("checkpoints/actor_460.pth"))
# agent.critic.load_state_dict(torch.load("checkpoints/critic_460.pth"))

return_list_all = {}
for env in envs:
    key = f'{env.pgm}'
    return_list_all[key] = []

return_list_mean = {}
for env in envs:
    key = f'{env.pgm}'
    return_list_mean[key] = []

data = []

for i in range(num_episodes):
    transition_dict_reply = {
        'states': [],
        'actions': [],
        'next_states': [],
        'rewards': [],
        'dones': [],
    }

    for env in envs:
        state = env.reset() 
        transition_dict = {
            'states': [],
            'actions': [],
            'next_states': [],
            'rewards': [],
            'dones': [],
        }
        done = False  
        episode_return = 0  
        pre_gain = []
        while not done:
            action = agent.take_action(state)  
            next_state, reward, done, _, _  = env.step(action)  
            transition_dict['states'].append(state)
            transition_dict['actions'].append(action)
            transition_dict['next_states'].append(next_state)
            transition_dict['rewards'].append(reward)
            transition_dict['dones'].append(done)
            transition_dict_reply['states'].append(state)
            transition_dict_reply['actions'].append(action)
            transition_dict_reply['next_states'].append(next_state)
            transition_dict_reply['rewards'].append(reward)
            transition_dict_reply['dones'].append(done)
            state = next_state
            episode_return += reward

        return_list_all[env.pgm].append(episode_return)
        print(f'iter:{i}, pgm:{env.pgm}, return:{np.mean(return_list_all[env.pgm][-10:])}')
        output = ""
        output += f"{i}: {np.mean(return_list_all[env.pgm][-10:])}\n"
        with open('results/reward_'+env.pgm+'.txt', 'a') as file:
            file.write(output)
        # plt reward
        return_list_mean[env.pgm].append(np.mean(return_list_all[env.pgm][-10:]))
        column_name = 'episode_reward_mean'
        plt.plot(return_list_mean[env.pgm])
        plt.xlabel('Episodes')
        plt.ylabel(column_name)
        plt.title('Reward Progress_' + env.pgm)
        plt.grid(True)
        plt.savefig('results/reward_plot_'+env.pgm+'.png')
        plt.close()
        
    agent.learn(transition_dict_reply)

    if i%20 == 0:
        torch.save(agent.actor.state_dict(), "checkpoints/actor_" + str(i+120) + ".pth" )
        torch.save(agent.critic.state_dict(), "checkpoints/critic_" + str(i+120) + ".pth")

    # plt all envs' reward
    tmp = []
    for key, value in return_list_all.items():
        tmp.append(np.mean(return_list_all[key][-10:]))
    data.append(np.mean(tmp))
    column_name = 'episode_reward_mean'
    plt.plot(data)
    plt.xlabel('Episodes')
    plt.ylabel(column_name)
    plt.title('Reward Progress_all')
    plt.grid(True)
    plt.savefig('results/reward_plot_all.png')
    plt.close()

    print(f'iter:{i}, return:{data[-1]}')
    output = ""
    output += f"{i}: {data[-1]}\n"
    with open('results/reward.txt', 'a') as file:
        file.write(output)


