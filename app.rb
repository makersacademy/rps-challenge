require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    #@player_1_name = params[:player_1_name]
    session[:player_1_name] = params[:player_1_name]
    @player_1_name = session[:player_1_name]
    erb :play
  end

  get '/game_result' do
    @player_1_name = session[:player_1_name]
    erb :game_result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
