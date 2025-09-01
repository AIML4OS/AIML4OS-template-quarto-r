#!/bin/bash
echo "Executing the restore_environment.sh script"

# GOing into the Git repo
cd ${MY_REPO}

echo $(pwd)

# Install all dependencies in the system folder
Rscript restore_environment.R

# Come back to home
cd ..
