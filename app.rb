require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do 
    erb :index
  end

  post '/name' do 
    $player1 = Player.new(params[:player_name])
    erb :name
  end

  post '/game' do 
    erb :game
  end

  post '/move' do
    @player1_move = params[:move]
    @player2_move = Game.new(@player1_move).player2_move
    erb :move
  end

end
