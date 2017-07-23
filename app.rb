require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    player_1 = Player.new(params[:player_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    erb :play
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @game.player_1.weapon = params[:player_weapon]
    erb :result
  end

  run! if app_file == $0
end
