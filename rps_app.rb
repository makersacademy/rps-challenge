require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    $game = Game.new
    @player_name = session[:player_name]
    erb :play
  end

  post '/play' do
    session[:player_weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @player_weapon = session[:player_weapon]
    erb :result
  end

  run! if app_file == $0
end
