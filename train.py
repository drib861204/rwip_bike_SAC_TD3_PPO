import os
import time
from datetime import datetime
import torch
import numpy as np
import argparse
from collections import deque
#from Pendulum_v3_mirror import *
from Pendulum_v4 import *
from files.Agent import Agent
import utils
import TD3
from PPO import PPO
from test import test


parser = argparse.ArgumentParser(description="")
parser.add_argument("-type", type=str, default=None, help="SAC, TD3, PPO")
parser.add_argument("-trial", type=int, default=0, help="trial")
parser.add_argument("-seed", type=int, default=0, help="Seed for the env and torch network weights, default is 0")
parser.add_argument("-frames", type=int, default=1e5, help="frames")
parser.add_argument("-w_q1", type=int, default=100, help="q1 weight")
parser.add_argument("-lr_a", type=float, default=0.0003, help="learning rate for actor network")
parser.add_argument("-lr_c", type=float, default=0.001, help="learning rate for critic network")
parser.add_argument("-r", "--render", type=int, default=0, choices=[0, 1], help="Rendering the evaluation runs if set to 1, default=0")
parser.add_argument("-done_cost", type=int, default=100, help="done cost")
parser.add_argument("-w_q2dot", type=float, default=0.0, help="q2 dot weight")
parser.add_argument("-w_tau", type=float, default=0.0, help="torque weight")
parser.add_argument("-w_dtau", type=float, default=0.0, help="diff torque weight")
parser.add_argument("-log_norm", type=int, default=0, help="0: normalize, 1: log and normalize")
parser.add_argument("-to_last_frame", type=int, default=1, help="0: stop when eval_reward is high, 1: train till the last frame")
parser.add_argument("-env_dt", type=float, default=0.05, help="timestep")
parser.add_argument("-stay_reward", type=float, default=0.0, help="reward gained for staying in the range")
parser.add_argument("-norm_reward", type=int, default=0, help="0: nothing, 1: normalize reward")
parser.add_argument("-reward_function", type=int, default=0, help="choose reward function")
parser.add_argument("-grad_done_cost", type=int, default=0, help="0: done cost=100, 1: graduate done cost")
parser.add_argument("-continued_training", type=int, default=0, help="0: train from the start, 1: train from existing model")
parser.add_argument("-I_rod_ratio", type=float, default=1.0)

#SAC arguments
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
parser.add_argument("-repm", "--replay_memory", type=int, default=int(1e6),
                    help="Size of the Replay memory, default is 1e6")
parser.add_argument("-g", "--gamma", type=float, default=0.99, help="discount factor gamma, default is 0.99")
parser.add_argument("--worker", type=int, default=1, help="Number of parallel worker, default = 1")
parser.add_argument("-t", "--tau", type=float, default=0.005, help="Softupdate factor tau, default is 0.005")
parser.add_argument("-layer_size", type=int, default=256,
                    help="Number of nodes per neural network layer, default is 256")
parser.add_argument("-a", "--alpha", type=float,
                    help="entropy alpha value, if not choosen the value is leaned by the agent")

#TD3 arguments
parser.add_argument("--start_timesteps", default=25e3, type=int)  # Time steps initial random policy is used
parser.add_argument("--expl_noise", default=0.1, type=float)  # Std of Gaussian exploration noise
parser.add_argument("--policy_noise", default=0.2, type=float)  # Noise added to target policy during critic update
parser.add_argument("--noise_clip", default=0.5, type=float)  # Range to clip target policy noise
parser.add_argument("--policy_freq", default=2, type=int)  # Frequency of delayed policy updates
#parser.add_argument("-lr", default=1e-3, type=float, help="learning rate")

#PPO arguments
parser.add_argument("--action_std", default=0.6, type=float)  # starting std for action distribution (Multivariate Normal)
parser.add_argument("--action_std_decay_rate", default=0.05, type=float)  # linearly decay action_std (action_std = action_std - action_std_decay_rate)
parser.add_argument("--min_action_std", default=0.1, type=float)  # minimum action_std (stop decay after action_std <= min_action_std)
parser.add_argument("--action_std_decay_freq", default=10000, type=int)  # int(2.5e5)  # action_std decay frequency (in num timesteps)
parser.add_argument("--up_step", type=int, default=2000, help="PPO update timestep")
parser.add_argument("--K_epochs", type=int, default=80)
parser.add_argument("--eps_clip", type=float, default=0.2)

args = parser.parse_args()


def timer(start, end):
    """ Helper to print training time """
    hours, rem = divmod(end - start, 3600)
    minutes, seconds = divmod(rem, 60)
    print("\nTraining Time:  {:0>2}:{:0>2}:{:05.2f}".format(int(hours), int(minutes), seconds))


def save_pth():
    if args.type == "SAC":
        torch.save(agent.actor_local.state_dict(), checkpoint_path)
    elif args.type == "TD3":
        torch.save(agent.actor.state_dict(), checkpoint_path)
    elif args.type == "PPO":
        torch.save(agent.policy_old.state_dict(), checkpoint_path)


def train():
    rep = 0
    rep_max = 500
    eval_every = 1000
    episode_reward = 0
    i_episode = 1
    save_count = 0

    state = env.reset(mode="train")

    for frame in range(1, int(args.frames) + 1):
        #print(time.time())

        rep += 1

        if frame % eval_every == 0 or frame == 1:
            eval_reward = test(env=env, agent=agent, args=args)
            print("\neval_reward", eval_reward)
            log_f_eval.write('{},{}\n'.format(frame, eval_reward))
            log_f_eval.flush()
            if not args.to_last_frame:
                if eval_reward > -10:
                    save_count += 1
                    if save_count >= 10:
                        save_pth()
                        break

        if args.type == "SAC":
            action = agent.act(state)
            next_state, reward, done, _ = env.step(action, rep)
            #if done or rep >= rep_max:
            agent.step(state, action, reward, next_state, [done], frame, 0)
            #else:
            #    agent.memory.add(state, action, reward, next_state, [done])
            state = next_state

        elif args.type == "TD3":
            if frame < args.start_timesteps:
                action = env.action_space.sample()
            else:
                action = (
                        agent.select_action(np.array(state))
                        + np.random.normal(0, max_action * args.expl_noise, size=action_size)
                ).clip(-max_action, max_action)
            next_state, reward, done, _ = env.step(action/env.max_torque)
            done_bool = float(done) if rep < rep_max else 0
            replay_buffer.add(state, action, next_state, reward, done_bool)
            state = next_state
            if frame >= args.start_timesteps:
                agent.train(replay_buffer, args.batch_size)

        elif args.type == "PPO":
            action = agent.select_action(state)
            state, reward, done, _ = env.step(action)
            agent.buffer.rewards.append(reward)
            agent.buffer.is_terminals.append(done)
            if frame % update_timestep == 0:
                agent.update()
            if frame % action_std_decay_freq == 0:
                agent.decay_action_std(action_std_decay_rate, min_action_std)

        episode_reward += reward

        if done or rep >= rep_max:
            rep = 0
            print(f"Episode : {i_episode} \t\t Timestep : {frame} \t\t Episode Reward : {episode_reward}")
            log_f.write('{},{},{}\n'.format(i_episode, frame, episode_reward))
            log_f.flush()
            i_episode += 1
            episode_reward = 0
            state = env.reset(mode="train")

            save_pth()


if __name__ == "__main__":

    env = Pendulum(args)

    torch.manual_seed(args.seed)
    np.random.seed(args.seed)

    device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
    print(f"Using device: {device}")

    state_size = env.observation_space.shape[0]
    action_size = env.action_space.shape[0]

    if args.type == "SAC":
        agent = Agent(state_size=state_size, action_size=action_size, args=args, device=device)
        if args.continued_training:
            agent.actor_local.load_state_dict(torch.load(f"runs_SAC/rwip34/rwip34_{args.seed}.pth", map_location=device))

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

    elif args.type == "PPO":
        action_std = args.action_std
        action_std_decay_rate = args.action_std_decay_rate
        min_action_std = args.min_action_std
        action_std_decay_freq = args.action_std_decay_freq
        update_timestep = args.up_step
        lr_actor = args.lr_a
        lr_critic = args.lr_c
        agent = PPO(state_size, action_size, lr_actor, lr_critic, args.gamma, args.K_epochs, args.eps_clip, True, action_std)

    ###################### logging ######################
    log_dir = f"runs_{args.type}/rwip{args.trial}"
    if not os.path.exists(log_dir):
        os.makedirs(log_dir)

    checkpoint_path = log_dir + f"/rwip{args.trial}_{args.seed}.pth"

    log_dir = log_dir + "/log"
    if not os.path.exists(log_dir):
        os.makedirs(log_dir)

    #current_num_files = next(os.walk(log_dir))[2]
    #run_num = len(current_num_files)

    log_f_name = log_dir + f"/{args.type}_log_{args.seed}.csv"
    log_f = open(log_f_name, "w+")
    log_f.write('episode,timestep,raw_reward\n')
    log_f_eval_name = log_dir + f"/{args.type}_log_eval_{args.seed}.csv"
    log_f_eval = open(log_f_eval_name, "w+")
    log_f_eval.write('timestep,eval_reward\n')
    #####################################################

    t0 = time.time()

    train()

    t1 = time.time()
    timer(t0, t1)
    env.close()
    log_f.close()
    log_f_eval.close()
