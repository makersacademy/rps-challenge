require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb :play
  end

  post '/game' do
    session[:move] = params[:move]
    redirect '/game'
  end

  get '/game' do
    @move = session[:move]
    erb :game
  end

  run! if app_file == $0
end
