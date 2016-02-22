require 'sinatra/base'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    #INSERT WEAPON HERE
  end

# CAN BE UNDER ONE + SPECIFY DIFFERENT PARAMS
# TURN TO POST
  get '/rock' do
    redirect '/result'
  end

  get '/paper' do
    redirect '/result'
  end

  get '/scissors' do
    redirect '/result'
  end

  get '/result' do
    $game.result
    # SAVE RESULT AS VARIABLE AND SEND IT TO RESULTS.ERB
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
