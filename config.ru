require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/rps_web.rb')
use Rack::Static, :urls => ['/images', '/javascripts'], :root => 'public'

run RPSWeb