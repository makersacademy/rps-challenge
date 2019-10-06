require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'

class RpsApp < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/single-player' do
    erb :single_player
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/sp-game' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new("COMPUTER")
    @game = Game.create(@player1, @player2)
    redirect '/play'
  end

  post '/mp-game' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new(params[:player2])
    @game = Game.create(@player1, @player2)
    redirect '/mp-play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @game.single_player(params[:move])
    redirect '/end'
  end

  get '/mp-play' do
    erb :mp_play
  end

  post '/p1_move' do
    @game.p1_move(params[:move])
    redirect '/mp-play'
  end

  post '/p2_move' do
    @game.p2_move(params[:move])
    redirect '/end'
  end


  get '/end' do
    @game.outcome
    erb :end
  end

  run! if app_file == $0
end
