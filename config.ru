require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')

# Compile Sass into CSS
require 'sass/plugin/rack'
Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run RPS
