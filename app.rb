require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game_logic'

class RPS < Sinatra::Base 
  configure :development do
    enable :sessions
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @@gamelogic = GameLogic.new(Player.new(params[:name_1]), Player.new(params[:name_2]))
    redirect '/play'
  end

  get '/play' do
    @gamelogic = @@gamelogic
    @player1 = @gamelogic.players[0]
    @player2 = @gamelogic.players[1]
    erb :play
  end

  post '/move' do
    @@gamelogic.current_turn.assign_move(params[:move])
    @@gamelogic.change_turn    
    redirect '/play'
  end

  get '/play_again' do
    @@gamelogic.reset_moves
    redirect '/play'
  end

  get '/new_game' do
    redirect '/'
  end

end
