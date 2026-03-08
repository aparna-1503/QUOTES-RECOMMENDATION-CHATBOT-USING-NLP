#!/bin/bash


rasa run actions --actions actions --port 5005 &
ACTION_PID=$!


rasa run --enable-api --cors "*" --port ${PORT:-10000}


kill $ACTION_PID
