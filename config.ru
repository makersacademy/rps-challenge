require File.expand_path('app', File.dirname(__FILE__))

use Rack::Static, :urls => %w[/css /images], :root => './public'

run App
