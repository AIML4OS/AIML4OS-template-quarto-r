#!/bin/bash

export WORK_DIR=/home/onyxia/work

# Get the name of the repo
export MY_REPO=$(ls -d "/home/onyxia/work"/*/ | head -n 1 | xargs basename)

echo /home/onyxia/work/$MY_REPO

# Download data
sh $MY_REPO/sspcloud/download_data.sh

# Open project
sh $MY_REPO/sspcloud/open_project.sh

# Open the index
# This prevents renv from dropping rstudioapi from the lockfile
export EXERCISE_PATH=index.qmd
sh $MY_REPO/sspcloud/open_exercise.sh

# Ensure Quarto extension is up to date
if ! command -v code-server &> /dev/null; then
  curl -fsSL https://code-server.dev/install.sh | sh
fi
code-server --install-extension quarto.quarto