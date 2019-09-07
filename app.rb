require 'sinatra'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  get '/register' do
    erb :register
  end

  post '/names' do
    $game = Game.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @name = $game.name
    erb :play
  end

  get '/rock' do
    $game.player_move = "Rock"
    $game.game_round
    redirect '/result'
  end

  get '/paper' do
    $game.player_move = "Paper"
    $game.game_round
    redirect '/result'
  end

  get '/scissors' do
    $game.player_move = "Scissors"
    $game.game_round
    redirect '/result'
  end

  get '/result' do
    @player_move = $game.player_move
    @computer_move = $game.computer_move
    @result = $game.result
    erb :result
  end

end
