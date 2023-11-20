#!/bin/bash
python /app/koboldcpp.py --model /app/models/$MODEL --port $PORT --smartcontext --highpriority --skiplauncher
