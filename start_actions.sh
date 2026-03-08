#!/bin/bash

# Start Action Server in background
rasa run actions --port 5055 &
ACTION_PID=$!

# Start Rasa Server in foreground
rasa run --enable-api --cors "*" --port 10000

# If Rasa stops, kill action server
kill $ACTION_PID