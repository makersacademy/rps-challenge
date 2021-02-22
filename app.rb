# Rock, Paper, Scisscors weekend challenge
# Eds
require 'sinatra/base'
require './lib/rps_game'


class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  

  get '/' do
    erb :index
  end

  post '/enter_details' do
    $player = params[:name]
    $player_selection = params[:rps_choice]
    redirect '/start_game'
  end

  get '/start_game' do
    p "The /start_game route is being reached" 
    @player = $player
    @player_selection = $player_selection
    @@game = Rps_Game.new
    @@game.add_player($player, $player_selection)
    erb :start_game
  end
  
  post '/run_game' do
    p "The /run_game route is being reached" 
    redirect '/results'
  end
  
  get '/results' do
    p "The /results route is being reached" 
    p @@game
    @winner = @@game.run_game
    @pc_choice = @@game.pc_choice
    erb :results
  end

end