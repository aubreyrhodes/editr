desc 'Deploy Safely to Heroku'
task :deploy do
  APP_NAME = "editrapp"
  sh "git push heroku master"
  sh "heroku pgbackups:capture --expire --app #{APP_NAME}"
  sh "heroku run rake db:migrate --app #{APP_NAME}"
  sh "heroku restart --app #{APP_NAME}"
  sh "curl -o /dev/null http://#{APP_NAME}.herokuapp.com"
end
