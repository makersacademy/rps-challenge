require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/rps.rb')

run Rps

map "/public" do
  run Rack::Directory.new("./public")
end