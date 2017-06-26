require 'sinatra/base'
require './docs/computer.rb'
require './docs/player.rb'
require './docs/game.rb'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    player_2 = Computer.new
    @game = Game.create_new_game(player_1, player_2)
    erb :play
  end

  post '/battle' do
    @game = Game.instance
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @player_1.move = (params[:move])
    erb :battle
  end
end
