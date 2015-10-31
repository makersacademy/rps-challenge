require 'sinatra/base'
require 'game'
require 'player'
require 'computer'

class RPS < Sinatra::Base

  get '/' do
    erb (:register)
  end

  get '/play' do
    player1 = Player.new(params[:name])
    player2 = Computer.new
    $game = Game.new(player1, player2)
    @player_name = player1.name
    erb :play
  end

  post '/go' do
    $game.set_player1_hand(params[:hand])
    $game.set_player2_hand(nil)
    $game.play
    redirect '/go'
  end

  get '/go' do
    @player1_name = $game.player1_name
    @player2_name = $game.player2_name
    @player1_hand = $game.player1_hand
    @player2_hand = $game.player2_hand
    @outcome = $game.outcome
    erb :go
  end
end
