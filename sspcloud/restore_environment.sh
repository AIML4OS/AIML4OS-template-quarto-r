#!/bin/bash
echo "Executing the restore_environment.sh script"

# Install all dependencies in the system folder
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
 if (newSession)
  {
    renv::restore(prompt = FALSE)
  }
}, action = 'append')

" >> /home/onyxia/work/${MY_REPO}/.Rprofile