require 'sinatra/base'
require './lib/game'
require './lib/marketer'

class RockPaperScissors < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end