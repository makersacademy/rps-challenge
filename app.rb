require 'sinatra/base'
require 'sinatra/reloader'
# require './lib/player'
# require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

end
