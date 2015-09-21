require 'cucumber/rake/task'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new :cop
RSpec::Core::RakeTask.new :spec
Cucumber::Rake::Task.new :cuke

task default: [:cop, :spec, :cuke]

require "#{File.dirname(__FILE__)}/app"

namespace :assets do
  desc 'Precompile assets'
  task :precompile do
   App.assets.precompile
   # Sinatra::Application.assets.precompile # classic apps
  end
end