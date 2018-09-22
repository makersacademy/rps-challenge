require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, "Ssssshhh! secret"

  get '/' do
    erb :welcome
  end

  get '/names_input' do
    erb :names
  end

  post '/store_names' do
    player1 = Player.new(params[:player1_name])
    session[:game] = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @name = session[:game].players.first.name
    erb :play
  end

  post '/move_input' do
    p params
    p session
    p session[:game]
  end
end
