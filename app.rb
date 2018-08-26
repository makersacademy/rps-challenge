require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player])
    @player = $player
    erb(:name)
  end
  # could make ai class to pass to game

  get '/game' do
    @player = $player
    erb(:game)
  end

run! if app_file == $0

end
