require 'rspec/core/rake_task'
require 'rubocop/rake_task'

RSpec::Core::RakeTask.new :spec
RuboCop::RakeTask.new :cop

task default: [:cop, :spec]
