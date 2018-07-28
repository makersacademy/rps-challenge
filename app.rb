require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/logic'

class Game < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  post '/weapon' do
    $player_1_choice = params[:choice]
    $player_2_choice = ['rock', 'paper', 'scissors'].sample 

    redirect '/result'
  end 

  get '/result' do 
  erb :result
  end 
  
  get '/play' do 
    @player_1 = $player_1
    erb :play
  end 

  run! if app_file == $PROGRAM_NAME
end
