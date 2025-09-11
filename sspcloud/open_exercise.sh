#!/bin/bash
echo "Executing the open_exercise.sh script"

# Open the exercise
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
 if (newSession)
  {
    rstudioapi::navigateToFile('${EXERCISE_PATH}')
  }
}, action = 'append')

" >> /home/onyxia/.Rprofile