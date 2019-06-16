require 'sinatra/base'

class RpsApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    @player_name = session[:player_name]
    @player_move = session[:move]
    erb :move
  end

  run! if app_file == $0
end
