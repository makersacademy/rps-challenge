require 'sinatra/base'
require './lib/player'
require './lib/game_one_player'
require './lib/game_two_player'

class RPS < Sinatra::Base

  before do
    @game_1_player = GameOnePlayer.instance
    @game_2_player = GameTwoPlayer.instance
  end

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
    GameOnePlayer.create(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player_name = @game_1_player.player1.name
    erb :play
  end

  post '/choose_weapon' do
    @game_1_player.player1.store_choice(params[:choice])
    @game_1_player.determine_result
    redirect to('/result')
  end

  get '/result' do
    @win = @game_1_player.win
    @player1s_choice = @game_1_player.player1.choice
    @player2s_choice = @game_1_player.pc_choice
    erb :result
  end

  get '/play_again' do
    @game_1_player.game_reset
    redirect to('/play')
  end

  get '/two_player' do
    erb :two_player
  end

  post '/two_player_name_save' do
    GameTwoPlayer.create(params[:player1_name], params[:player2_name])
    redirect to('/p1_play')
  end

  get '/p1_play' do
    @player_name = @game_2_player.player1.name
    erb :p1_pick
  end

  post '/save_p1_pick' do
    @game_2_player.player1.store_choice(params[:choice])
    redirect to('/p2_play')
  end

  get '/p2_play' do
    @player_name = @game_2_player.player2.name
    erb :p2_pick
  end

  post '/choose_weapon_two_player' do
    @game_2_player.player2.store_choice(params[:choice])
    @game_2_player.determine_result
    redirect to('/2player_result')
  end

  get '/2player_result' do
    @win = @game_2_player.win
    @player1_name = @game_2_player.player1.name
    @player2_name = @game_2_player.player2.name
    @player1s_choice = @game_2_player.player1.choice
    @player2s_choice = @game_2_player.player2.choice
    erb :two_player_result
  end

  get '/two_player_play_again' do
    @game_2_player.game_reset
    redirect to('/p1_play')
  end

end
