require 'sinatra/base'
require './app/models/game'

class RPS < Sinatra::Base

  $game = Game.new

  get '/' do
    erb :index
  end

  post '/player' do
    $game.add_player(Player.new(params[:player]))
    redirect '/'
  end

  get '/play' do
    erb :play
  end

  post '/item' do
    $game.player.make_move(Item.new(params[:move]))
  end

end
