require 'sinatra/base'
require './app/models/game'
require './app/models/item'
require './app/models/player'
require './app/models/results'
require './app/models/random'

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
    redirect '/result'
  end

  get '/result' do
    erb :results
  end

end
