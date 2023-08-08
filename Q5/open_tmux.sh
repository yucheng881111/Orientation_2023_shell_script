#!/bin/bash

SESSION_NAME="exercise"
tmux new-session -d -s $SESSION_NAME
tmux split-window -h -t $SESSION_NAME
tmux select-pane -t $SESSION_NAME -L
tmux send-keys -t $SESSION_NAME 'ping 8.8.8.8' C-m
tmux select-pane -t $SESSION_NAME -R
tmux send-keys -t $SESSION_NAME 'watch -n 2 -d nvidia-smi' C-m
