SASS_COMMAND = "sass"

task :watch_style do
  sh "#{SASS_COMMAND} --watch public/css/sass/style.scss:public/css/style.css"
end
