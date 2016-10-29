#Para subir archivos a Heroku
  primero hacer commit a  git

  git add *
  git commit -m "mensaje del commit"
  git push origin master

  #precompilar archivos

  rake assets:precompile

  #subir nuevamente cambios a git -el tutorial lo hace asi nunca lo entendi-

  #subir cambios a la rama master de heroku

  git push heroku master

  #migrar base de datos para Heroku

  heroku run rake db:migrate

  #abrir la aplicacion

  heroku open
