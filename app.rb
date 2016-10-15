#require 'sinatra'


require 'sinatra/base'
require './lib/player'
require './lib/game'
#require './lib/player_attack'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end
  
  post '/registered' do
    @reg_name = params[:player_name]
    player1 = Player.new(@reg_name)     # NameError - uninitialized constant RPS::Player:
    player2 = Player.new("Computer")    # NameError - uninitialized constant RPS::Player:
    
    @rps_game = Game.create_game(player1, player2)
    erb(:registered)
    #redirect '/play'
  end
 
  before do
    @rps_game = Game.game_instance   
    # NameError - uninitialized constant RPS::Player:
  end
 
  
  get '/play' do
   
    erb(:play)
  end
  
  run! if app_file == $0
end