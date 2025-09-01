#!/bin/bash
echo "Executing the download_exercise.sh script"

# Retrieve the URL of the website deployed on Github Pages
cd $MY_REPO
export GITHUB_OWNER=$(git remote get-url origin | sed -E 's/.*github.com[:\/]([^\/]+)\/.*/\1/')
export GH_PAGES_WEBSITE="https://${GITHUB_OWNER}.github.io/${MY_REPO}"
cd ..

echo $GH_PAGES_WEBSITE

# Define the URL of the exercise
EXERCISE_DOWNLOAD_URL="${GH_PAGES_WEBSITE}/${EXERCISE_PATH}"

echo $EXERCISE_DOWNLOAD_URL

# Download the EXERCISE directly using curl
WORK_DIR="/home/onyxia/work"
echo $EXERCISE_DOWNLOAD_URL
curl -L $EXERCISE_DOWNLOAD_URL -o "${WORK_DIR}/exercise.ipynb"