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

end
