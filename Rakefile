task :publish do
  sh 'bundle exec jekyll'
  sh 'bundle exec compass compile'
  sh 'git push origin master'
  sh 'git push heroku master'
end