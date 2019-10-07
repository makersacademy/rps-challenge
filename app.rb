require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/1player' do
    erb :index1
  end

  get '/2player' do
    erb :index2
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    player2 = Player.new("Default")
    $game = Game.new($player1, player2)
    redirect '/welcome'
  end

  post '/names2' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    $game = Game.new($player1, $player2)
    redirect '/welcome2'
  end

  get '/welcome' do
    @game = $game
    @player_name = $game.player.name
    erb :welcome
  end

  get '/welcome2' do
    @game = $game
    erb :welcome2
  end

  post '/play' do
    @player = $player1.make_choice(params[:rpsGame])
    @game = $game
    @game.computer_choice
    @game.player_choice
    $result = @game.play
    redirect '/result'
  end

  post '/play2' do
    @player = $player1.make_choice(params[:rpsGame])
    @player = $player2.make_choice(params[:rpsGame2])
    @game = $game
    @game.player_choice
    @game.player2_choice
    $result = @game.play_2
    redirect '/result'
  end

  get '/result' do
    @result = $result
    @player_name = $game.player.name
    erb :result
  end

  post '/done' do
    redirect '/'
  end
end
