require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:home)
  end

  post '/name' do
    $game = Game.new(params[:player])
    redirect '/home_game'
  end

  get '/home_game' do
    @player = $game.player
    @player_points = $game.player_points
    @comp_points = $game.comp_points
    erb(:home_game)
  end

  get '/play_rock' do
    @player = $game.player
    player_move = $game.play_rock
    @computer_move = $game.computer_move
    @result = $game.result(player_move)
    erb(:play_rock)
  end 

  get '/play_scissors' do
    @player = $game.player
    player_move = $game.play_scissors
    @computer_move = $game.computer_move
    @result = $game.result(player_move)
    erb(:play_scissors)
  end

  get '/play_paper' do
    @player = $game.player
    player_move = $game.play_paper
    @computer_move = $game.computer_move
    @result = $game.result(player_move)
    erb(:play_paper)
  end
end
