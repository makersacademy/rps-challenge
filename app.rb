require 'sinatra/base'
require './lib/player'
require './lib/game_one_player'

class RPS < Sinatra::Base

  get '/tester' do
    'Testing is working!'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name = @@game.player1.name
    erb :play
  end

  get '/result' do
    @win = @@game.win
    @player1s_choice = @@game.player1s_choice
    @player2s_choice = @@game.player2s_choice
    erb :result
  end

  post '/save_name' do
    @@game = GameOnePlayer.new(params[:player_name])
    redirect to('/play')
  end

  post '/choose_weapon' do
    player_choice = params[:choice]
    player_choice.downcase!
    @@game.determine_result(player_choice)
    redirect to('/result')
  end

  get '/play_again' do
    @@game.game_reset
    redirect to('/play')
  end

end