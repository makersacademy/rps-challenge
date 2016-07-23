require 'sinatra/base'
require './lib/game'
require './lib/player'

class GameController < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player1 = Player.new(params[:player_name])
    erb(:game)
  end

  get '/game' do
    erb(:game)
  end

  post '/fight' do
    @player_weapon = params[:weapon]
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
