require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    $player = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = $player
    @choice = session[:choice]
    erb :play
  end

  post '/player_choice' do
    session[:choice] = params[:choice]
    redirect '/play'
  end

  get '/end_game' do
    @choice = session[:choice]
    erb :end_game
  end
  run! if app_file == $0
end
