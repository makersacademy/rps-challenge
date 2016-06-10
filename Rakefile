require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :spec

task default: [:spec]

task :configure_routes do
  require "sinatra-rake-routes"
  # Tell SinatraRakeRoutes what your Sinatra::Base application class is called:
  require './app'
  SinatraRakeRoutes.set_app_class(RPS)
end

require "sinatra-rake-routes/tasks"