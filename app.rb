require 'sinatra/base'
require './lib/player'
require './lib/move_generator'
require './lib/game'
require './controller/single_player'
require './controller/multi_player'

class RockPaperScissors < Sinatra::Base
  set :root, File.join(File.dirname('rps-challenge'), '.')
  enable :sessions

  get '/' do
    erb :index
  end
end
