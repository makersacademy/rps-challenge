require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/tester' do
    'Testing is working!'
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name = @@game.player.name
    erb :play
  end

  post '/save_names' do
    @@game = Game.new(Player.new(params[:player_name]))
    redirect to('/play')
  end

end