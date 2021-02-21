# Rock, Paper, Scisscors weekend challenge
# Eds
require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  

  get '/' do
    erb :index
  end

  post '/enter_details' do
    $player = params[:name]
    $player_selection = params[:rps_choice]
    p params
    redirect '/start_game'
  end

  get '/start_game' do
    p "The /start_game route is being reached" 
    p $player_selection, $player
    @player = $player
    @player_selection = $player_selection
    erb :start_game
  end

  get '/get_results' do
    
    erb :index
  end


end