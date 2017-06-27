require 'sinatra/base'
require './models/computer.rb'
require './models/player.rb'
require './models/game.rb'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    player_1 = Player.new(params[:player_name])
    player_2 = Computer.new
    @game = Game.create_new_game(player_1, player_2)
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @player_1.move = (params[:move])
    erb :result
  end
end
