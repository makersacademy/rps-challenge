require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

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
    erb :move
  end

end
