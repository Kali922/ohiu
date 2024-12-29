#!/bin/bash

# Start aria2c as a daemon
aria2c --enable-rpc --rpc-listen-all=false --rpc-allow-origin-all --daemon

# Run terabox.py in the background
python3 terabox.py &

# Run web.py in the foreground
python3 web.py
