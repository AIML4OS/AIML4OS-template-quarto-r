#!/bin/bash
echo "Executing the restore_environment.sh script"

# Installing rv
curl -sSL https://raw.githubusercontent.com/A2-ai/rv/refs/heads/main/scripts/install.sh | bash

# Going into the Git repo
cd ${MY_REPO}

echo $(pwd)

# Install all dependencies in the system folder
rv sync

# Come back to home
cd ..
