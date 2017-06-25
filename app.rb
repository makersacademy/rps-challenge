require 'sinatra/base'
require './lib/player1.rb'
require './lib/player2.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  
  post '/play' do
    Player1.instance.naming(params[:player_1])
    Player2.instance.naming(params[:player_2])
    @game = Game.create_new_game(Player1.instance, Player2.instance)
    redirect '/play'
  end
  
  before do
    @game = Game.game_instance
  end
  
  get '/play' do
    erb :play
  end
  
  post '/result' do
    p "params #{params}"
    Player1.instance.choice(params[:choice_player_1])
    Player2.instance.choice(params[:choice_player_2])
    p "P1 #{Player1.instance.current_choice}"
    p "P2 #{Player2.instance.current_choice}"
  end
  
  run! if app_file == $0
  
end
