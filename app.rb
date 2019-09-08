require 'sinatra/base'
require './lib/RPS'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end
  post '/match' do
    @player_name = params[:Player1]
    erb(:match)
  end
  post '/result' do
    rps_game = RockPaperSissors.new
    @player_move = params[:player]
    @computer_move = rps_game.random_move
    @result = rps_game.play(@player_move, @computer_move)
    erb(:result)
  end
end
