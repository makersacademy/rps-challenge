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
    @@game = GameOnePlayer.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player_name = @@game.player1.name
    erb :play
  end

  get '/result' do
    @win = @@game.win
    @player1s_choice = @@game.player1.choice
    @player2s_choice = @@game.pc_choice
    erb :result
  end




  get '/two_player' do
    erb :two_player
  end

  post '/two_player_name_save' do
    @@game = GameTwoPlayer.new(params[:player1_name], params[:player2_name])
    redirect to('/p1_play')
  end

  get '/p1_play' do
    @player_name = @@game.player1.name
    erb :p1_pick
  end

  post '/save_p1_pick' do
    @@game.player1.store_choice(params[:choice].downcase)
    redirect to('/p2_play')
  end

  get '/p2_play' do
    @player_name = @@game.player2.name
    erb :p2_pick
  end

  post '/choose_weapon' do
    if @@game.players == 1
      @@game.player1.store_choice(params[:choice].downcase!)
    elsif @@game.player2.store_choice(params[:choice].downcase!)
    end
    @@game.determine_result
    p @@game.players
    redirect to('/result') if @@game.players == 1
    redirect to('/2player_result') if @@game.players == 2
  end

  get '/2player_result' do
    @win = @@game.win
    @player1_name = @@game.player1.name
    @player2_name = @@game.player2.name
    @player1s_choice = @@game.player1.choice
    @player2s_choice = @@game.player2.choice
    erb :two_player_result
  end


  get '/play_again' do
    @@game.game_reset
    session[:p1_choice] = nil
    redirect to('/play') if @@game.players == 1
    redirect to('/p1_play') if @@game.players == 2
  end

end