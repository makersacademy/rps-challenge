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
    player1 = Player.new(@reg_name)     
    player2 = Player.new("Computadora")    
    @rps_game = Game.create_game(player1, player2)
    erb(:registered)
    #redirect '/play'
  end
 
  before do
    @rps_game = Game.game_instance   
  end
  
  get '/play' do
    erb(:play)
  end
  
  post '/result' do
    erb(:result)
  end
  
  get '/end_game' do
    erb(:end_game)
  end
  
  
  run! if app_file == $0
end