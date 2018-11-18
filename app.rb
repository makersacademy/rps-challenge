require 'sinatra'
require './lib/player'
require './lib/game'


class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/result' do
    player_1 = Player.new(params[:player_1], params[:options])
    @game = Game.new(player_1)
    @game.computer_random_choice
    erb :result
  end

end
