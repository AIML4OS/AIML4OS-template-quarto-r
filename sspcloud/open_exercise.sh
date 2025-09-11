#!/bin/bash
echo "Executing the open_exercise.sh script"

# Open the exercise
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
 if (newSession)
  {
    rstudioapi::navigateToFile('${MY_REPO}/${EXERCISE_PATH}')
  }
}, action = 'append')
setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '${WORK_DIR}'))
  {
    message('Activation du projet RStudio')
    rstudioapi::openProject('${MY_REPO}')
  }
}, action = 'append')

" >> /home/onyxia/.Rprofile