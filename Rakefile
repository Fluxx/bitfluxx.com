desc "Publish the blog to Heroku"
task :publish do
  sh 'bundle exec jekyll'
  sh 'bundle exec compass compile'
  sh 'test -z "`git diff`"'
  sh 'git push origin master'
  sh 'git push heroku master'
end