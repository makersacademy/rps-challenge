require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    "Rock Paper Scissors"
    erb(:index)
  end

  post '/get-names' do
    Game.new_game(params[:player1])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choose' do
    Game.stored_game.player_1_turn = params[:choose_turn]
    redirect '/play'
  end
  
  run! if app_file == $0

end
