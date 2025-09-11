#!/bin/bash
echo "Executing the open_project.sh script"

# Open the project
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '${WORK_DIR}'))
  {
    message('Activation du projet RStudio')
    rstudioapi::openProject('${MY_REPO}')
  }
}, action = 'append')

" >> /home/onyxia/.Rprofile