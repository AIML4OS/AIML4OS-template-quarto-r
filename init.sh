#!/bin/bash

export WORK_DIR=/home/onyxia/work

# Get the name of the repo
export MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

# Restore the environment
sh $MY_REPO/sspcloud/restore_environment.sh

# Download data
sh $MY_REPO/sspcloud/download_data.sh

# Ensure Quarto extension is up to date
if ! command -v code-server &> /dev/null; then
  # Install code-server if necessary
  curl -fsSL https://code-server.dev/install.sh | sh
fi
code-server --install-extension quarto.quarto

# open project
# sh $MY_REPO/sspcloud/open_project.sh
