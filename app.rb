require 'sinatra'
require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/game_2.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  enable :sessions

  $wins = 0
  $wins_p1 = 0
  $wins_p2 = 0

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  post '/names_double' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play_2'
  end

  get '/single_player' do
    erb :single_player
  end

  get '/double_player' do
    erb :double_player
  end

  get '/play' do
    $player_1_name = $player_1.name
    erb :play
  end

  get '/play_2' do
    $player_1_name = $player_1.name
    $player_2_name = $player_2.name
    erb :play_2
  end

  post '/choice' do
    p params[:choice]
    $player_1_choice = params[:choice]
    redirect '/attack'
  end

  post '/choice_2' do
    p params[:choice]
    $player_1_choice = params[:choice]
    erb :play_2_2
  end

  post '/choice_3' do
    p params[:choice]
    $player_2_choice = params[:choice]
    redirect '/attack_2'
  end

  get '/computer_choice' do
    $computer_choice = Computer.new.computer_choice
    p $computer_choice
    $winner = Game.new.winner
    erb :computers_choice
  end

  get '/attack' do
    $player_1_name = $player_1.name
    $player1_choice = $game
    erb :attack
  end

  get '/attack_2' do
    $player_1_name = $player_1.name
    $player_2_name = $player_2.name
    p $player_1_choice
    p $player_2_choice
    $winner_two = Two_player.new.winner_2
    erb :attack_2
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
