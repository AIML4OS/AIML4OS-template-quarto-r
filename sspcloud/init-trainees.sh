#!/bin/bash

export WORK_DIR=/home/onyxia/work

# Get the name of the repo
export MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

# Restore the environment
sh $MY_REPO/sspcloud/restore_environment.sh

# Download data
sh $MY_REPO/sspcloud/download_data.sh

# Ensure Quarto extension is up to date
code-server --install-extension quarto.quarto

# Open the exercise
# $1 is an argument giving the path of the qmd exercise file within the Github repository
export EXERCISE_PATH=$1
sh $MY_REPO/sspcloud/open_exercise.sh