require 'sinatra'
require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/single_player' do
    erb :single_player
  end

  get '/play' do
    $player_1_name = $player_1.name
    erb :play
  end

  post '/choice' do
    p params[:choice]
    $player_1_choice = params[:choice]
    redirect '/attack'
  end

  get '/computer_choice' do
    $computer_choice = Computer.new.computer_choice
    p $computer_choice
    $winner = Game.new.winner
    erb :computers_choice
  end

  get '/attack' do
    $player_1_name = $player_1.name
    @player1_choice = $game
    erb :attack
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
