#!/bin/bash

# Start aria2c in daemon mode with the specified options
aria2c --enable-rpc --rpc-listen-all=false --rpc-allow-origin-all --daemon

# Check if aria2c started successfully
if [ $? -eq 0 ]; then
    echo "aria2c started successfully in daemon mode."
else
    echo "Failed to start aria2c. Exiting."
    exit 1
fi

# Run a.py
if python3 web.py; then
    echo "web.py executed successfully."
else
    echo "Failed to execute a.py. Exiting."
    exit 1
fi

# Run b.py
if python3 terabox.py; then
    echo "b.py executed successfully."
else
    echo "Failed to execute b.py. Exiting."
    exit 1
fi
