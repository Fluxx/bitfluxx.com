namespace :compile do

  desc "Compiles Jekyll"
  task :jekyll do
    sh 'bundle exec compass compile'
  end

  desc "Compiles Compass"
  task :compass do
    sh 'bundle exec compass compile'
  end

end

desc "Compile all the things!"
task :compile => ['compile:jekyll', 'compile:compass']

desc "Asserts no pending changes"
task :assert_workspace_clean do
  sh 'test -z "`git diff`"'
end

namespace :git do

  desc "Push the blog to Heroku"
  task :heroku do
    sh 'git push heroku master'
  end

  desc "Push the blog to Github"
  task :github do
    sh 'git push origin master'
  end

end

desc 'Publish the site to the interwebs'
task :publish => %w(compile assert_workspace_clean git:github git:heroku)