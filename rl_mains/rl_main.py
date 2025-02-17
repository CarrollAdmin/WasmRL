from wasm_env import WASMEnv
from gymnasium.envs.registration import register
import gymnasium
from ppo import *
import matplotlib.pyplot as plt
from runtime_poly import *
from runtime_iot import *
from runtime_cBench import *
from runtime_singleglass import *
import csv

def get_exec_time(c_code, opt_indice, path=".", device="x86", benchmark="polybenchc"):
    if benchmark == "polybenchc":
        return get_exec_time_poly(c_code, opt_indice, path, device)
    elif benchmark == "iot":
        return get_exec_time_iot(c_code, opt_indice, path, device)
    elif benchmark == "cbench":
        return get_exec_time_cbench(c_code, opt_indice, path, device)
    elif benchmark == "singleglass":
        return get_exec_time_singleglass(c_code, opt_indice, path, device)
    else:
        raise ValueError(f"Unknown benchmark type: {benchmark}")
    
def load_prior_pass_all(filepath):
    prior_pass_all = {}
    with open(filepath, 'r') as csvfile:
        csvreader = csv.reader(csvfile)
        for row in csvreader:
            program_name = row[0]
            prior_pass = eval(row[1]) 
            prior_pass_all[program_name] = prior_pass
    return prior_pass_all
    
def main(benchmark):
    
    if benchmark == "polybenchc":
        bms = [
            "2mm",
            "3mm",
            "adi",
            "atax",
            "bicg",
            "cholesky",
            "correlation",
            "covariance",
            "deriche",
            "doitgen",
            "durbin",
            "fdtd-2d",
            "floyd-warshall",
            "gemm",
            "gemver",
            "gesummv",
            "gramschmidt",
            "heat-3d",
            "jacobi-1d",
            "jacobi-2d",
            "lu",
            "ludcmp",
            "mvt",
            "nussinov",
            "seidel-2d",
            "symm",
            "syr2k",
            "syrk",
            "trisolv",
            "trmm",
        ]
    elif benchmark == "cbench":
        bms = [
        "automotive_bitcount", 
        "automotive_qsort1",
        "automotive_susan_c",
        "consumer_jpeg_c", 
        "consumer_jpeg_d", 
        "consumer_tiff2bw", 
        "consumer_tiffdither",
        "consumer_tiffmedian",
        "network_dijkstra",
        "network_patricia",
        "office_stringsearch1",
        "security_blowfish_d",
        "security_rijndael_d",
        "security_sha",
        "telecom_adpcm_c",
        "telecom_CRC32",
    ]
    elif benchmark == "singleglass":
        bms = [
            "shootout-base64",
            "shootout-ctype",
            "shootout-fib2",
            "shootout-gimli",
            "shootout-matrix",
            "shootout-memmove",
            "shootout-random",
        ]
    else:
        print("invalid benchmark option")
    
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
            id=env_name,
            entry_point='wasm_gym.envs:WASMEnv',
            kwargs={'env_config': env_configs},
            max_episode_steps=20,
        )

        env = gymnasium.make(env_name)
        n_states = env.observation_space.shape[0]
        n_actions = env.action_space.n
        envs.append(env)
        envs_n_states.append(n_states)
        envs_n_actions.append(n_actions)

        # prior knowledge
        if is_prior:
            prior_pass = []
            indices = []
            exec_time_raw = -1
            if env_configs['device'] == "all":
                exec_time_raw_rasp, _ = get_exec_time(env_configs['pgm'], indices, ".", "raspberry", benchmark)
                exec_time_raw_jetson, _ = get_exec_time(env_configs['pgm'], indices, ".", "jetsonnano", benchmark)
                exec_time_raw_x86, _ = get_exec_time(env_configs['pgm'], indices, ".", "x86", benchmark)
                exec_time_raw = exec_time_raw_rasp + exec_time_raw_jetson + exec_time_raw_x86
            else:
                exec_time_raw, _ = get_exec_time(env_configs['pgm'], indices, ".", env_configs['device'], benchmark)
            for i in range(n_actions):
                indices = []
                indices.append(i)
                passes = getPasses(indices)
                passes_str = " ".join(str(x) for x in passes)
                print(passes_str)
                if env_configs['device'] == "all":
                    exec_time_rasp, _ = get_exec_time(env_configs['pgm'], indices, ".", "raspberry", benchmark)
                    exec_time_jetson, _ = get_exec_time(env_configs['pgm'], indices, ".", "jetsonnano", benchmark)
                    exec_time_x86, _ = get_exec_time(env_configs['pgm'], indices, ".", "x86", benchmark)
                    exec_time = exec_time_rasp + exec_time_jetson + exec_time_x86
                    print(exec_time_rasp , exec_time_jetson , exec_time_x86)
                else:
                    exec_time, _ = get_exec_time(env_configs['pgm'], indices, ".", env_configs['device'], benchmark)
                exec_time_diff = exec_time_raw - exec_time
                prior_pass.append(exec_time_diff)
            
            print(prior_pass)
            prior_pass_all[env_configs['pgm']] = prior_pass

            with open('results/prior.csv', 'a', newline='') as csvfile:
                csvwriter = csv.writer(csvfile)
                csvwriter.writerow([env_configs['pgm'], prior_pass])
        else:
            prior_pass_all = load_prior_pass_all('results/prior.csv')

    num_episodes = 200
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
                lmbda=0.95,
                epochs=10,
                eps=0.2,
                gamma=gamma,
                device=device
                )

    # pretrained model loading

    # agent.actor.load_state_dict(torch.load("checkpoints/actor_20.pth"))
    # agent.critic.load_state_dict(torch.load("checkpoints/critic_20.pth"))

    return_list_all = {}
    for env in envs:
        key = f'{env.unwrapped.pgm}'
        return_list_all[key] = []

    return_list_mean = {}
    for env in envs:
        key = f'{env.unwrapped.pgm}'
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
        flag = True
        iter = 0
        for env in envs:
            state = env.reset(seed=1)
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
                next_state, reward, done, _, _ = env.step(action)
                if reward <= -6:
                    flag = False
                    break
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
                pre_gain.append(prior_pass_all[env.unwrapped.pgm][action])
                state = next_state
                episode_return += reward

            # reward alloc
            if len(transition_dict['rewards']) == env.unwrapped.max_episode_steps:
                for k in range(len(transition_dict['rewards'])):
                    pass_iter = transition_dict['actions'][k]
                    transition_dict_reply['rewards'][iter * env.unwrapped.max_episode_steps + k] = pre_gain[k] / sum(pre_gain) * episode_return
                iter = iter + 1
            else:
                print(len(transition_dict['rewards']))
            return_list_all[env.unwrapped.pgm].append(episode_return)
            print(f'iter:{i}, pgm:{env.unwrapped.pgm}, return:{np.mean(return_list_all[env.unwrapped.pgm][-10:])}')
            output = ""
            output += f"{i}: {np.mean(return_list_all[env.unwrapped.pgm][-10:])}\n"
            with open('results/reward_' + env.unwrapped.pgm + '.txt', 'a') as file:
                file.write(output)
            # plt reward
            return_list_mean[env.unwrapped.pgm].append(np.mean(return_list_all[env.unwrapped.pgm][-10:]))
            column_name = 'episode_reward_mean'
            plt.plot(return_list_mean[env.unwrapped.pgm])
            plt.xlabel('Episodes')
            plt.ylabel(column_name)
            plt.title('Reward Progress_' + env.unwrapped.pgm)
            plt.grid(True)
            plt.savefig('results/reward_plot_' + env.unwrapped.pgm + '.png')
            plt.close()

        if flag:
            agent.learn(transition_dict_reply)

        if i % 20 == 0:
            torch.save(agent.actor.state_dict(), "checkpoints/actor_" + str(i) + ".pth")
            torch.save(agent.critic.state_dict(), "checkpoints/critic_" + str(i) + ".pth")

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


if __name__ == "__main__":
    is_prior= False
    benchmark = "singleglass"
    main(benchmark)


