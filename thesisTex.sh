#Actions first window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/thesis_tex' Enter
tmux send-keys -t 1 'vim' Enter
tmux send-keys -t 1 ':NERDTreeToggle' Enter
tmux send-keys -t 1 '3j' Enter

#Actions second window
tmux new-window
tmux send-keys -t 1 'cd ~/Documents/TUM/thesis/thesis_tex' Enter
tmux send-keys -t 1 'xdg-open build/main.pdf' Enter
tmux send-keys -t 1 'google-chrome https://docs.google.com/document/d/14O23DCX6maGg8eHe3tJULXQ6OWZTE3n1EEWJK7vzito/edit &' Enter
tmux send-keys -t 1 'google-chrome https://translate.google.com/ &' Enter
tmux send-keys -t 1 'google-chrome https://translate.google.com/ &' Enter

#After creation actions
tmux select-window -t 1
