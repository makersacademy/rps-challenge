require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/choice' do
    session[:player_1_move] = params[:player_1_move]
    redirect '/result'
  end

  get '/result' do

    erb :result
  end







  # start the server if ruby file executed directly
  run! if app_file == $0
end
