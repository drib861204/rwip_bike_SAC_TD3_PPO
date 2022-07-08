import os
import pandas as pd
import matplotlib.pyplot as plt
import argparse


parser = argparse.ArgumentParser(description="")
parser.add_argument("-type", type=str, default=None, help="SAC, TD3, PPO")
parser.add_argument("-trial", type=int, default=0, help="trial")
args = parser.parse_args()


def save_graph():
    print("============================================================================================")
    # env_name = 'CartPole-v1'
    # env_name = 'LunarLander-v2'
    # env_name = 'BipedalWalker-v2'
    #env_name = 'RoboschoolWalker2d-v1'
    env_name = "rwip"

    fig_num = 0     #### change this to prevent overwriting figures in same env_name folder
    plot_avg = False    # plot average of all runs; else plot all runs separately
    fig_width = 10
    fig_height = 6

    # smooth out rewards to get a smooth and a less smooth (var) plot lines
    window_len_smooth = 30
    min_window_len_smooth = 1
    linewidth_smooth = 1.5
    alpha_smooth = 1

    window_len_var = 5
    min_window_len_var = 1
    linewidth_var = 2
    alpha_var = 0.1

    colors = ['red', 'blue', 'green', 'orange', 'purple', 'olive', 'brown', 'magenta', 'cyan', 'crimson','gray', 'black']

    # make directory for saving figures
    figures_dir = f"runs_{args.type}"
    if not os.path.exists(figures_dir):
        os.makedirs(figures_dir)

    # make environment directory for saving figures
    figures_dir = figures_dir + f'/rwip{args.trial}/fig/'
    if not os.path.exists(figures_dir):
        os.makedirs(figures_dir)

    current_num_files = next(os.walk(figures_dir))[2]
    num_runs = len(current_num_files)

    fig_save_path = figures_dir + f'{args.type}_fig_{num_runs}.png'

    # get number of log files in directory
    log_dir = f'runs_{args.type}/rwip{args.trial}/log'

    current_num_files = next(os.walk(log_dir))[2]
    num_runs = len(current_num_files) / 2

    all_runs = []
    eval_runs = []

    for run_num in range(int(num_runs)):

        log_f_name = log_dir + f'/{args.type}_log_{run_num}.csv'
        print("loading data from : " + log_f_name)
        data = pd.read_csv(log_f_name)
        data = pd.DataFrame(data)
        print("data shape : ", data.shape)
        all_runs.append(data)

        log_f_eval_name = log_dir + f'/{args.type}_log_eval_{run_num}.csv'
        data_eval = pd.read_csv(log_f_eval_name)
        data_eval = pd.DataFrame(data_eval)
        eval_runs.append(data_eval)

        print("--------------------------------------------------------------------------------------------")

    ax = plt.gca()
    ax_eval = plt.gca()

    if plot_avg:
        # average all runs
        df_concat = pd.concat(all_runs)
        df_concat_groupby = df_concat.groupby(df_concat.index)
        data_avg = df_concat_groupby.mean()

        # smooth out rewards to get a smooth and a less smooth (var) plot lines
        data_avg['reward_smooth'] = data_avg['reward'].rolling(window=window_len_smooth, win_type='triang', min_periods=min_window_len_smooth).mean()
        data_avg['reward_var'] = data_avg['reward'].rolling(window=window_len_var, win_type='triang', min_periods=min_window_len_var).mean()

        data_avg.plot(kind='line', x='timestep' , y='reward_smooth',ax=ax,color=colors[0],  linewidth=linewidth_smooth, alpha=alpha_smooth)
        data_avg.plot(kind='line', x='timestep' , y='reward_var',ax=ax,color=colors[0],  linewidth=linewidth_var, alpha=alpha_var)

        # keep only reward_smooth in the legend and rename it
        handles, labels = ax.get_legend_handles_labels()
        ax.legend([handles[0]], ["reward_avg_" + str(len(all_runs)) + "_runs"], loc=2)

    else:
        for i, run in enumerate(all_runs):
            #----------create raw reward------------#
            #run['raw_reward'] = run['reward']*0
            #sum_tmp = 0
            #for j in range(run.shape[0]):
            #    if j >= 100:
            #        run['raw_reward'][j] = run['reward'][j] * 100 - sum_tmp
            #    else:
            #        run['raw_reward'][j] = run['reward'][j] * (j + 1) - sum_tmp
            #    sum_tmp += run['raw_reward'][j]
            #    if j >= 99:
            #        sum_tmp -= run['raw_reward'][j - 99]
            #---------------------------------------#

            # smooth out rewards to get a smooth and a less smooth (var) plot lines
            run['reward_smooth_' + str(i)] = run['raw_reward'].rolling(window=window_len_smooth, win_type='triang', min_periods=min_window_len_smooth).mean()
            run['reward_var_' + str(i)] = run['raw_reward'].rolling(window=window_len_var, win_type='triang', min_periods=min_window_len_var).mean()

            # plot the lines
            run.plot(kind='line', x='timestep', y='reward_smooth_' + str(i),ax=ax,color=colors[i % len(colors)],  linewidth=linewidth_smooth, alpha=alpha_smooth)
            #run.plot(kind='line', x='timestep', y='reward_var_' + str(i),ax=ax,color=colors[i % len(colors)],  linewidth=linewidth_var, alpha=alpha_var)
            #run.plot(kind='line', x='timestep', y='raw_reward', ax=ax, color=colors[i % len(colors)], linewidth=linewidth_var, alpha=alpha_var)

        # keep alternate elements (reward_smooth_i) in the legend
        handles, labels = ax.get_legend_handles_labels()
        new_handles = []
        new_labels = []
        for i in range(len(handles)):
            #if(i%2 == 0):
            new_handles.append(handles[i])
            new_labels.append(labels[i])
        ax.legend(new_handles, new_labels, loc=4)

        '''############eval plot############
        for i, run in enumerate(eval_runs):
            # plot the lines
            run.plot(kind='line', x='timestep', y='eval_reward',ax=ax_eval,color=colors[i % len(colors)],  linewidth=1.5, alpha=0.2)

        # keep alternate elements (reward_smooth_i) in the legend
        handles, labels = ax_eval.get_legend_handles_labels()
        new_handles = []
        new_labels = []
        for i in range(len(handles)):
            new_handles.append(handles[i])
            new_labels.append(labels[i])
        ax_eval.legend(new_handles, new_labels, loc=4)
        #################################'''

    # ax.set_yticks(np.arange(0, 1800, 200))
    # ax.set_xticks(np.arange(0, int(4e6), int(5e5)))

    ax.grid(color='gray', linestyle='-', linewidth=1, alpha=0.2)

    ax.set_xlabel("Timesteps", fontsize=12)
    ax.set_ylabel("Rewards", fontsize=12)

    plt.title(f"{args.type} "+env_name, fontsize=14)

    fig = plt.gcf()
    fig.set_size_inches(fig_width, fig_height)

    print("============================================================================================")
    plt.savefig(fig_save_path)
    print("figure saved at : ", fig_save_path)
    print("============================================================================================")
    
    #plt.show()


if __name__ == '__main__':

    save_graph()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
