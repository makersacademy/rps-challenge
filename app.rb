# Rock, Paper, Scisscors weekend challenge
# Eds
require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  

  get '/' do
    erb :index
  end

  post '/name' do
    p "The /name route is being reached" 
    p params
    $player = params[:name]
    redirect '/rps_selection'
  end

  get '/rps_selection' do
    p "The /rps_selection route is being reached" 
    p $player
    @player = $player
    erb :rps_selection
  end

  post '/rps_choice' do
 
    $player_weapon = params[:selection]
    redirect '/start_game'
  end

  get '/start_game' do
    @player = $player
    # @player_weapon = $player.weapon
    erb :start_game
  end

  get '/fight' do

  end

end