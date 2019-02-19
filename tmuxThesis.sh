#Actions first window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/ALPACA-Hoppe' Enter
tmux send-keys -t 1 'vim' Enter
tmux send-keys -t 1 ':NERDTreeToggle' Enter
tmux send-keys -t 1 '3j' Enter

#Actions second window
tmux new-window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/ALPACA-Hoppe' Enter

#After creation actions
tmux select-window -t 1
