require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions
  set :session_store, Rack::Session::Pool

  get '/' do
    erb :index
  end
  # First Screen allows input of name
  post '/name' do
    session[:game] = Game.new(Player.new(params[:player_name]))
    redirect '/play'
  end
  # Second screen and main game screen
  get '/play' do
    erb :play
  end
  # Action on hittng any of buttons
  post '/choice' do
    session[:game].move(params[:choice])
    # redirect '/game_over' if session[:game].game_over?
    redirect '/play'
  end

  run! if app_file == $0
end
