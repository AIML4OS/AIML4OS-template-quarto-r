#!/bin/bash

# Get the name of the repo
export MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

echo /home/onyxia/work/$MY_REPO

# Do not restore the environment (you should do it by hand)
# sh $MY_REPO/sspcloud/restore_environment.sh

# Download data
sh $MY_REPO/sspcloud/download_data.sh
