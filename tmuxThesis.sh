#Actions first window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/ALPACA-Hoppe' Enter
tmux send-keys -t 1 'vim' Enter
tmux send-keys -t 1 ':NERDTreeToggle' Enter
tmux send-keys -t 1 ':tabnew src/main.cpp' Enter
tmux send-keys -t 1 ':tabnew inputfile.xml' Enter
tmux send-keys -t 1 'gt' Enter
tmux send-keys -t 1 '5j' Enter

#Actions second window
tmux new-window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/ALPACA-Hoppe' Enter

#Actions third window
tmux new-window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/dummy' Enter
tmux send-keys -t 1 'vim' Enter
tmux send-keys -t 1 ':NERDTreeToggle' Enter
tmux split-window
tmux send-keys -t 2 'cd ~/Documents/TUM/thesis/dummy' Enter

#After creation actions
tmux select-window -t 1
