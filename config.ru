require 'rubygems'
require File.join(File.dirname(__FILE__), 'lib/rock_paper_scissors_web.rb')

run RockPaperScissors

map "/public" do
  run Rack::Directory.new("./public")
end