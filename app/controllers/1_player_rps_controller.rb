require 'sinatra/base'
require './app/models/game'

class RPS < Sinatra::Base

  get '/' do
    $game = Game.new
    erb :index
  end

  post '/player' do
    $game.add_player(Player.new(params[:player]))
  end

end
