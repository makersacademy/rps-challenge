require 'sinatra'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  get '/hello' do
    'Hello World'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = params[:player]
    redirect '/play'
  end

  get '/play' do
    $game = Game.new(Player.new($player),Player.new)
    @player1 = $game.player1.name
    @player2 = $game.player2.name
    erb :play
  end

  post '/scores' do
    $game.player1.pick_move(params[:pick_move])
    $game.player2.pick_move(["Rock","Paper","Scissors"].sample)
    redirect '/results'
  end

  get '/results' do
    @player_move = $game.player1.move
    @computer_move = $game.player2.move
    erb :results
  end  
end