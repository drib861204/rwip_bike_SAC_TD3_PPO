import os
import torch
import numpy as np
import argparse
import matplotlib.pyplot as plt
#from Pendulum_v3_mirror import *
from Pendulum_v4 import *
from files.Agent import Agent
import utils
import TD3
from PPO import PPO


parser = argparse.ArgumentParser(description="")
parser.add_argument("-type", type=str, default=None, help="SAC, TD3, PPO")
parser.add_argument("-trial", type=int, default=0, help="trial")
parser.add_argument("-cont_trial", type=int, default=0, help="continue training trial")
parser.add_argument("-seed", type=int, default=0, help="Seed for the env and torch network weights, default is 0")
parser.add_argument("-frames", type=int, default=50000, help="frames")
parser.add_argument("-r", "--render", type=int, default=0, choices=[0, 1], help="Rendering the evaluation runs if set to 1, default=0")
parser.add_argument("-w_q1", type=int, default=100, help="q1 weight")
parser.add_argument("-lr_a", type=float, default=0.0003, help="learning rate for actor network")
parser.add_argument("-lr_c", type=float, default=0.001, help="learning rate for critic network")
parser.add_argument("-done_cost", type=int, default=100, help="done cost")
parser.add_argument("-w_q2dot", type=float, default=0.001, help="q2 dot weight")
parser.add_argument("-w_tau", type=float, default=0.01, help="torque weight")
parser.add_argument("-w_dtau", type=float, default=0.001, help="diff torque weight")
parser.add_argument("-log_norm", type=int, default=0, help="0: normalize, 1: log and normalize")
parser.add_argument("-to_last_frame", type=int, default=1, help="0: stop when eval_reward is high, 1: train till the last frame")
parser.add_argument("-env_dt", type=float, default=0.05, help="timestep")
parser.add_argument("-stay_reward", type=float, default=1.0, help="reward gained for staying in the range")
parser.add_argument("-reward_floor", type=int, default=0, help="1: set reward floor")
parser.add_argument("-norm_reward", type=int, default=0, help="0: nothing, 1: normalize reward")
parser.add_argument("-reward_function", type=int, default=1, help="choose reward function")
parser.add_argument("-grad_done_cost", type=int, default=0, help="0: done cost=100, 1: graduate done cost")
parser.add_argument("-continued_training", type=int, default=0, help="0: train from the start, 1: train from existing model")
parser.add_argument("-I_rod_ratio", type=float, default=1.0)
parser.add_argument("-torque_delay", type=int, default=0, help="consider torque delay. 1: state + last_torque, 2: + last and current torque, 3: original state")
parser.add_argument("-max_torque", type=float, default=21.0)
parser.add_argument("-max_q1", type=float, default=3.5)
parser.add_argument("-rep_max", type=int, default=500)
parser.add_argument("-plot_response", type=int, default=0)
parser.add_argument("-two_state", type=int, default=0, help="only q1 and q2 dot")
parser.add_argument("-norm_state", type=int, default=1)

# SAC parameters
parser.add_argument("-per", type=int, default=0, choices=[0, 1],
                    help="Adding Priorizied Experience Replay to the agent if set to 1, default = 0")
parser.add_argument("-munchausen", type=int, default=0, choices=[0, 1],
                    help="Adding Munchausen RL to the agent if set to 1, default = 0")
parser.add_argument("-dist", "--distributional", type=int, default=0, choices=[0, 1],
                    help="Using a distributional IQN Critic if set to 1, default=0")
parser.add_argument("-ere", type=int, default=0, choices=[0, 1],
                    help="Adding Emphasizing Recent Experience to the agent if set to 1, default = 0")
parser.add_argument("-n_step", type=int, default=1, help="Using n-step bootstrapping, default=1")
parser.add_argument("-d2rl", type=int, choices=[0, 1], default=0,
                    help="Uses Deep Actor and Deep Critic Networks if set to 1 as described in the D2RL Paper: https://arxiv.org/pdf/2010.09163.pdf, default=0")
parser.add_argument("-bs", "--batch_size", type=int, default=256, help="Batch size, default is 256")
parser.add_argument("--n_updates", type=int, default=1,
                    help="Update-to-Data (UTD) ratio, updates taken per step with the environment, default=1")
parser.add_argument("-repm", "--replay_memory", type=int, default=1000,
                    help="Size of the Replay memory, default is 1e6")
parser.add_argument("-g", "--gamma", type=float, default=0.99, help="discount factor gamma, default is 0.99")
parser.add_argument("-w", "--worker", type=int, default=1, help="Number of parallel worker, default = 1")
parser.add_argument("-t", "--tau", type=float, default=0.005, help="Softupdate factor tau, default is 0.005")
parser.add_argument("-layer_size", type=int, default=256,
                    help="Number of nodes per neural network layer, default is 256")
parser.add_argument("-a", "--alpha", type=float,
                    help="entropy alpha value, if not chosen the value is leaned by the agent")

# TD3 parameters
parser.add_argument("--start_timesteps", default=25e3, type=int)  # Time steps initial random policy is used
parser.add_argument("--expl_noise", default=0.1, type=float)  # Std of Gaussian exploration noise
parser.add_argument("--policy_noise", default=0.2, type=float)  # Noise added to target policy during critic update
parser.add_argument("--noise_clip", default=0.5, type=float)  # Range to clip target policy noise
parser.add_argument("--policy_freq", default=2, type=int)  # Frequency of delayed policy updates
#parser.add_argument("-lr", default=3e-4, type=float, help="learning rate")

#PPO arguments
parser.add_argument("--action_std", default=0.6, type=float)  # starting std for action distribution (Multivariate Normal)
parser.add_argument("--action_std_decay_rate", default=0.05, type=float)  # linearly decay action_std (action_std = action_std - action_std_decay_rate)
parser.add_argument("--min_action_std", default=0.1, type=float)  # minimum action_std (stop decay after action_std <= min_action_std)
parser.add_argument("--action_std_decay_freq", default=10000, type=int)  # int(2.5e5)  # action_std decay frequency (in num timesteps)
parser.add_argument("--up_step", type=int, default=2000, help="PPO update timestep")
parser.add_argument("--K_epochs", type=int, default=80)
parser.add_argument("--eps_clip", type=float, default=0.2)

args = parser.parse_args()


def transient_response(env, state_action_log, type):
    fig, axs = plt.subplots(4)
    fig.suptitle(f'{type} Transient Response')
    t = np.linspace(0, env.dt*(state_action_log.shape[0]-1), state_action_log.shape[0])
    axs[0].plot(t[1:], state_action_log[1:,0])
    axs[1].plot(t[1:], state_action_log[1:,1])
    axs[2].plot(t[1:], state_action_log[1:,2])
    axs[3].plot(t[1:], state_action_log[1:,3]*env.max_torque)
    axs[0].grid(axis='y')
    axs[1].grid(axis='y')
    axs[2].grid(axis='y')
    axs[3].grid(axis='y')
    axs[0].set_ylabel('q1(rad)')
    axs[2].set_ylabel('q2 dot(rad/s)')
    axs[3].set_ylabel('torque(Nm)')
    axs[1].set_ylabel('q1 dot(rad/s)')
    axs[3].set_xlabel('time(s)')
    axs[0].set_ylim([-0.065,0.065])
    axs[2].set_ylim([-34,34])
    axs[3].set_ylim([-24,24])
    axs[1].set_ylim([-0.15,0.15])
    axs[0].get_xaxis().set_visible(False)
    axs[1].get_xaxis().set_visible(False)
    axs[2].get_xaxis().set_visible(False)
    plt.savefig(f"runs_{type}/rwip{args.trial}/fig/response{args.seed}")
    plt.show()

    '''print("e_ss=",state_action_log[-1,0])
    print("u_ss=",state_action_log[-1,3]*env.max_torque)
    print("q1_min=",min(state_action_log[1:,0]))
    print("q1_min_index=",np.argmin(state_action_log[1:,0]))
    print("OS%=",min(state_action_log[1:,0])/(env.ang*pi/180))
    print("q1_a=", env.ang*pi/180 * 0.9)
    print("q1_b=", env.ang*pi/180 * 0.1)
    print("q1_c=", env.ang*pi/180 * 0.1)
    print("q1_d=", -env.ang*pi/180 * 0.1)
    min_a = 100
    min_b = 100
    min_c = 100
    min_d = 100
    t_a = 100
    t_b = 100
    t_c = 100
    t_d = 100
    for i in range(1,np.shape(state_action_log)[0]):
        tr_a = env.ang*pi/180 * 0.9
        tr_b = env.ang*pi/180 * 0.1
        tr_c = env.ang*pi/180 * 0.1
        tr_d = -env.ang*pi/180 * 0.1
        diff_a = abs(state_action_log[i,0] - tr_a)
        diff_b = abs(state_action_log[i,0] - tr_b)
        diff_c = abs(state_action_log[i,0] - tr_c)
        diff_d = abs(state_action_log[i,0] - tr_d)
        if diff_a < min_a:
            min_a = diff_a
            t_a = i * env.dt
        if diff_b < min_b:
            min_b = diff_b
            t_b = i * env.dt
        if diff_c < min_c:
            min_c = diff_c
            t_c = i * env.dt
        if diff_d < min_d:
            min_d = diff_d
            t_d = i * env.dt
    print("[min_a, t_a, min_b, t_b]=",[min_a, t_a, min_b, t_b])
    print("rising time=",t_b-t_a)
    print("[min_c, t_c, min_d, t_d]=",[min_c, t_c, min_d, t_d])
    print("settling time=",t_c,"or",t_d)'''


def test(env, agent, args):
    state_action_log = np.zeros((1, 4))
    state = env.reset(mode="test")

    if args.reward_floor:
        episode_reward = -args.stay_reward * 200
    else:
        episode_reward = 0

    rep = 0
    '''if args.env_dt == 0.05:
        time_duration = 50  # seconds
    else:
        time_duration = 5  # seconds
    rep_max = time_duration / env.dt'''
    rep_max = 1000

    while True:
        rep += 1
        if args.render:
            env.render(1)

        if args.type == "SAC":
            action = agent.act(np.expand_dims(state, axis=0), eval=True)
            action = action[0]

        elif args.type == "TD3":
            action = agent.select_action(np.array(state))
            action /= env.max_torque
        elif args.type == "PPO":
            action = agent.select_action(state, test=True)

        state, reward, done, _ = env.step(action, rep)
        state_for_render = env.state
        state_action = np.append(state_for_render, action)
        state_action_log = np.concatenate((state_action_log, np.asmatrix(state_action)), axis=0)
        episode_reward += reward

        if done or rep >= rep_max:
            break

    if __name__ == "__main__":
        transient_response(env, state_action_log, args.type)

    return np.mean(episode_reward)


if __name__ == "__main__":

    env = Pendulum(args)

    device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
    print(f"Using device: {device}")

    state_size = env.observation_space.shape[0]
    action_size = env.action_space.shape[0]

    log_dir = f"runs_{args.type}/rwip{args.trial}"
    #checkpoint_path = log_dir + f"/rwip{args.trial}_{args.seed}.pth"
    checkpoint_path = log_dir + f"/rwip{args.trial}_{args.seed}"

    log_dir = log_dir + "/fig"
    if not os.path.exists(log_dir):
        os.makedirs(log_dir)

    if args.type == "SAC":
        agent = Agent(state_size=state_size, action_size=action_size, args=args, device=device)
        agent.actor_local.load_state_dict(torch.load(checkpoint_path+"_actor", map_location=torch.device('cpu')))

    elif args.type == "TD3":
        max_action = float(env.action_space.high[0])
        kwargs = {
            "state_dim": state_size,
            "action_dim": action_size,
            "max_action": max_action,
            "discount": args.gamma,
            "tau": args.tau,
            "policy_noise": args.policy_noise * max_action,
            "noise_clip": args.noise_clip * max_action,
            "policy_freq": args.policy_freq,
            "lr_a": args.lr_a,
            "lr_c": args.lr_c
        }
        agent = TD3.TD3(**kwargs)
        replay_buffer = utils.ReplayBuffer(state_size, action_size)
        agent.actor.load_state_dict(torch.load(checkpoint_path, map_location=torch.device('cpu')))

    elif args.type == "PPO":
        action_std = 0.001 #0.1  # starting std for action distribution (Multivariate Normal)
        K_epochs = 80
        eps_clip = 0.2
        gamma = args.gamma
        lr_actor = args.lr_a
        lr_critic = args.lr_c
        agent = PPO(state_size, action_size, lr_actor, lr_critic, gamma, K_epochs, eps_clip, True, action_std)
        agent.policy_old.load_state_dict(torch.load(checkpoint_path, map_location=lambda storage, loc: storage))

    eval_reward = test(env, agent, args)
    print("\neval_reward", eval_reward)

    env.close()
