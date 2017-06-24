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
    $player_1 = Player.new(params[:player_name])
    erb :play
  end

  post '/battle' do
    $player_1.choose_move(params[:move])
    $player_2 = Computer.new
    @game = Game.new($player_1, $player_2)
    erb :battle
  end
end
