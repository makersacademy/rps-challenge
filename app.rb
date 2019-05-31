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




  get '/two_player' do
    erb :two_player
  end

  post '/two_player_name_save' do
    @@game = GameTwoPlayer.new(params[:player1_name], params[:player2_name])
    redirect to('/p1_play')
  end

  get '/p1_play' do
    erb :p1_play
  end

  post '/save_p1_pick' do
    @@game.player1.store_choice(params[:p1_choice].downcase)
    redirect to('/p2_play')
  end

  get '/p2_play' do
    erb :p2_pick
  end

  post '/choose_weapon' do
    if @@game.players == 1
      @@game.player1.store_choice(params[:choice].downcase!)
    elsif @@game.player2.store_choice(params[:choice].downcase!)
    end
    @@game.determine_result
    redirect to('/result')
  end

  get '/result' do
    @win = @@game.win
    @player1s_choice = @@game.player1s_choice
    @player2s_choice = @@game.player2s_choice
    erb :result
  end


  get '/play_again' do
    @@game.game_reset
    session[:p1_choice] = nil
    redirect to('/play') if @@game.players == 1
    redirect to('/p1_play') if @@game.players == 2
  end

end