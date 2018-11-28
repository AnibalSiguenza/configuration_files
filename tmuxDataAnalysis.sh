#Actions first window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/thesis_extra_scripts' Enter
tmux send-keys -t 1 'vim' Enter
tmux send-keys -t 1 ':NERDTreeToggle' Enter

#Actions second window
tmux new-window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/thesis_extra_scripts' Enter

#Actions third window
tmux new-window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/thesis_extra_scripts' Enter
tmux send-keys -t 1 'jupyter notebook' Enter

#After creation actions
tmux select-window -t 1
