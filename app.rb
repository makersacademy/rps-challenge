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
    @player_move = session[:move]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect to('/play')
  end

  run! if app_file == $0
end
