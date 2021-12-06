require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  post '/name' do 
    $player1 = Player.new(params[:player_name])
    $player2 = Computer.new("Dwayne")
    erb :name
  end

  post '/game' do 
    erb :game
  end

  post '/move' do
    @player1_move = params[:move]
    @player2_move = $player2.move
    @game = Game.new(@player1_move, @player2_move)
    erb @game.result
  end

end
