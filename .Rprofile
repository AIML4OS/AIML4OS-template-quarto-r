source("renv/activate.R")

setHook('rstudio.sessionInit', function(newSession) {
 if (newSession)
  {
    renv::restore(prompt = FALSE)
  }
}, action = 'append')


