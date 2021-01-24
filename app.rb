require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    $game = Game.new(player_1)
    redirect '/play'
  end

end
