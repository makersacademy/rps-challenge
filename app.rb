require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect('/play')
  end

  get '/play' do
    @name = $game.player.name
    erb(:play)
  end
end
