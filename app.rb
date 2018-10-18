require 'sinatra/base'
require './lib/model.rb'

class Controller < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:player_name]
    redirect 'game_type'
  end

  get '/game_type' do
    @player_1 = session[:name]
    erb :game_type
  end

  post '/game_option' do
    session[:game] = params[:game]
    redirect '/rps_game'
  end

  get '/rps_game' do
    @game = session[:game]
    erb :rps_game
  end

  run! if app_file == $0

end