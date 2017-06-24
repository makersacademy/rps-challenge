require 'sinatra/base'
require './lib/player1.rb'
require './lib/player2.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  
  post '/names' do
    Player1.instance.naming(params[:player_1])
    Player2.instance.naming(params[:player_2])
    @game = Game.create_new_game(Player1.instance, Player2.instance)
    @game = Game.game_instance
    erb :names
  end
  
  # before do
  #   @game = Game.game_instance
  # end
  
  run! if app_file == $0
  
end
