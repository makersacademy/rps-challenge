require 'sinatra/base'
require './lib/RPS'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end
  post '/match' do
    @player_name = params[:Player1]
    session[:Player] = @player_name
    p session
    erb(:match)
  end

  get '/match' do
    @player_name = session[:Player]
    erb(:match)
  end

  post '/result' do
    @player_name = session[:Player]
    rps_game = RockPaperSissors.new
    @player_move = params[:player]
    @computer_move = rps_game.random_move
    @result = rps_game.play(@player_move, @computer_move)
    erb(:result)
  end
end
