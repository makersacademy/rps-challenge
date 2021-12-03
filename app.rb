require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player_moves'
require_relative './lib/game_logic'

class RPS < Sinatra::Base 
  configure :development do
    enable :sessions
    register Sinatra::Reloader
  end

  get '/' do
    @@gamelogic = GameLogic.instance
    @@playermoves = PlayerMoves.instance
    @@playermoves.reset
    erb :index
  end

  post '/names' do
    @@playermoves.add_name(params[:name_1])
    @@playermoves.add_name(params[:name_2])
    redirect '/play'
  end

  get '/play' do
    @playermoves = @@playermoves
    @gamelogic = @@gamelogic
    @name_1 = @@playermoves.name_list[0]
    @name_2 = @@playermoves.name_list[1]
    erb :play
  end

  post '/move' do
    @@playermoves.add_move(params[:move])
    redirect '/play'
  end

  get '/play_again' do
    redirect '/'
  end

end
