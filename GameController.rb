require 'sinatra/base'
require './lib/game'
require './lib/player'
require 'tilt/erb'

class GameController < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    erb(:game)
  end

  get '/game' do
    @game = Game.instance
    erb(:game)
  end

  post '/fight' do
    @game = Game.instance
    @game.player.take_weapon(params[:weapon])
    erb(:fight)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
