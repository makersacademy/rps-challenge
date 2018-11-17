require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

# single player methods:

  post '/name' do
    player1 = Player.new(params[:name])
    @game = Game.create(player1)
    @game.type = 'singleplayer'
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/move' do
    @game = Game.instance
    @game.player1.move = params[:move]
    redirect '/result'
  end

# multi player methods:

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1, player2)
    @game.type = 'multiplayer'
    redirect '/player1_move'
  end

  get '/player1_move' do
    @game = Game.instance
    erb(:player1_move)
  end

  post '/player1_save_move' do
    @game = Game.instance
    @game.player1.move = params[:move]
    redirect '/holdingpage'
  end

  get '/holdingpage' do
    @game = Game.instance
    erb(:holdingpage)
  end

  get '/player2_move' do
    @game = Game.instance
    erb(:player2_move)
  end

  post '/player2_save_move' do
    @game = Game.instance
    @game.player2.move = params[:move]
    redirect '/result'
  end

# shared method

  get '/result' do
    @game = Game.instance
    @game.play
    erb(:result)
  end
end
