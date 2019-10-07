require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/gameoptions' do
    session[:version] = params[:version]
    session[:mode] = params[:mode]
    if session[:mode] == "singleplayer"
      redirect '/singleplayer'
    else
      redirect '/multiplayer'
    end
  end

  # single player methods:

  get '/singleplayer' do
    @version = session[:version]
    erb(:singleplayer)
  end

  post '/name' do
    player1 = Player.new(params[:name])
    @game = Game.create(player1, \
      Player.new("Computer", true), @version)
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

  get '/multiplayer' do
    @version = session[:version]
    erb(:multiplayer)
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1, player2, @version)
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
