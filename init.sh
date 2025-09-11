#!/bin/bash

export WORK_DIR=/home/onyxia/work

# Get the name of the repo
export MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

echo /home/onyxia/work/$MY_REPO

# Restore the environment
# sh $MY_REPO/sspcloud/restore_environment.sh

# Download data
sh $MY_REPO/sspcloud/download_data.sh

# Open project
sh $MY_REPO/sspcloud/open_project.sh