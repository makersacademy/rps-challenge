require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class Battle < Sinatra::Base

  get '/' do
   erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]))
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    erb :play
  end

end
