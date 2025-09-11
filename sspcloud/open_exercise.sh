#!/bin/bash
echo "Executing the open_exercise.sh script"

export EXERCICE_FULL_PATH=${WORK_DIR}/${MY_REPO}/${EXERCISE_PATH}

echo $EXERCICE_FULL_PATH

# Open the exercise
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
 if (newSession)
  {
    rstudioapi::navigateToFile('${EXERCICE_FULL_PATH}')
  }
}, action = 'append')

" >> /home/onyxia/work/${MY_REPO}/.Rprofile