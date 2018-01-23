require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  get '/single-player' do
    erb :single_player
  end

  post '/single-player' do
    player = Player.new(params[:player1_name])
    Game.start(player)
    redirect '/play'
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/multiplayer' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    Game.start(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.player1.move = params[:player1_attack]
    redirect '/play2' unless @game.player2.move
    @game.compare
    redirect '/result'
  end

  get '/play2' do
    erb :play2
  end

  post '/play2' do
    @game.player2.move = params[:player2_attack]
    @game.compare
    redirect '/result'
  end

  get '/result' do
    erb(@game.result)
  end

  run! if app_file == $0
end
