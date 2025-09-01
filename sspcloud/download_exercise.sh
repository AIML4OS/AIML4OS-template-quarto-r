#!/bin/bash
echo "Executing the download_exercise.sh script"

# Retrieve the URL of the website deployed on Github Pages
cd $MY_REPO
export GITHUB_OWNER=$(git remote get-url origin | sed -E 's/.*github.com[:\/]([^\/]+)\/.*/\1/')
export GITHUB_REPO="https://www.github/${GITHUB_OWNER}/${MY_REPO}"

echo $GITHUB_REPO

# Define the URL of the exercise
EXERCISE_DOWNLOAD_URL="${GITHUB_REPO}/${EXERCISE_PATH}"

echo $EXERCISE_DOWNLOAD_URL

# Download the EXERCISE directly using curl
echo $EXERCISE_DOWNLOAD_URL
curl -L $EXERCISE_DOWNLOAD_URL -o "${MY_REPO}/exercise.qmd"