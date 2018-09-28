require 'sinatra/base'
require_relative 'lib/game_mode'
require_relative 'lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :welcome
  end

  post '/store_play_mode' do
    play_mode = params[:play_mode].to_sym
    p play_mode
    GameMode.create(player_mode: play_mode)
    redirect '/names_input'
  end

  get '/names_input' do
    @play_mode = GameMode.instance.player_mode
    erb :names
  end

  post '/store_names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    GameMode.instance.new_game(player1: player1, player2: player2)
    GameMode.instance.game
    redirect '/play'
  end

  get '/play' do
    @play_mode = GameMode.instance.player_mode
    @player1_name = GameMode.instance.game.players.first.name
    @player2_name = GameMode.instance.game.players.last.name
    erb :play
  end

  post '/store_move' do
    player1_move = params[:player1_move]
    player2_move = params[:player2_move]
    GameMode.instance.game.store_move(player1_move, player2_move)
    redirect '/winner'
  end

  get '/winner' do
    @winner = GameMode.instance.game.who_won
    erb :winner
  end
end
