require 'sinatra/base'
require './lib/player'
require './lib/game_one_player'
require './lib/game_two_player'

class RPS < Sinatra::Base

  get '/tester' do
    'Testing is working!'
  end

  get '/' do
    erb :index
  end

  get '/one_player' do
    erb :one_player
  end

  post '/one_player_name_save' do
    @game = GameOnePlayer.create(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @game = GameOnePlayer.instance
    @player_name = @game.player1.name
    erb :play
  end

  post '/choose_weapon' do
    @game = GameOnePlayer.instance
    @game.player1.store_choice(params[:choice])
    @game.determine_result
    redirect to('/result')
  end

  get '/result' do
    @game = GameOnePlayer.instance
    @win = @game.win
    @player1s_choice = @game.player1.choice
    @player2s_choice = @game.pc_choice
    erb :result
  end

  get '/play_again' do
    @game = GameOnePlayer.instance
    @game.game_reset
    redirect to('/play')
  end




  get '/two_player' do
    erb :two_player
  end

  post '/two_player_name_save' do
    @game = GameTwoPlayer.create(params[:player1_name], params[:player2_name])
    redirect to('/p1_play')
  end

  get '/p1_play' do
    @game = GameTwoPlayer.instance
    @player_name = @game.player1.name
    erb :p1_pick
  end

  post '/save_p1_pick' do
    @game = GameTwoPlayer.instance
    @game.player1.store_choice(params[:choice])
    redirect to('/p2_play')
  end

  get '/p2_play' do
    @game = GameTwoPlayer.instance
    @player_name = @game.player2.name
    erb :p2_pick
  end

  post '/choose_weapon_two_player' do
    @game = GameTwoPlayer.instance
    @game.player2.store_choice(params[:choice])
    @game.determine_result
    redirect to('/2player_result')
  end

  get '/2player_result' do
    @game = GameTwoPlayer.instance
    @win = @game.win
    @player1_name = @game.player1.name
    @player2_name = @game.player2.name
    @player1s_choice = @game.player1.choice
    @player2s_choice = @game.player2.choice
    erb :two_player_result
  end

  get '/two_player_play_again' do
    @game = GameTwoPlayer.instance
    @game.game_reset
    redirect to('/p1_play')
  end

end