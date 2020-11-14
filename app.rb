require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get '/hand-player-1' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :hand_player_2
  end

  get '/result' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :result
  end

  run! if app_file == $0
end
