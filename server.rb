require 'sinatra/base'
require_relative 'lib/ai_computer'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/multiplayer_helper'

class RPS < Sinatra::Base
  include MultiplayerHelper
  enable :sessions

  get '/' do
    session[:multiplayer] = nil
    session[:name] = nil
    erb :index
  end

  post '/' do
    session[:multiplayer] = params[:multiplayer]
    session[:name] = params[:name]
    erb :make_move
  end

  get '/again' do
    session[:multiplayer] = "true"
    erb :make_move
  end

  get '/result' do
    player = create_player(params[:choice])
    return single_player(player) if session[:multiplayer].nil?
    return waiting_player(player) if session[:multiplayer] == 'waiting'
    multiplayer(player)
  end

  get '/favicon.ico' do
    "<img src='/images/favicon.ico'>"
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
