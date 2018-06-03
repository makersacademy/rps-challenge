require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/players' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.player1
    @player2 = $game.player2
    erb :play
  end

  post '/move' do
    $game.player1.selection = params[:choice]
    redirect '/move'
  end

  get '/move' do
    @player1 = $game.player1
    erb :move
  end

  run! if app_file == $0
end
