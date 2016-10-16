require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rsp < Sinatra::Base
  enable :sessions


  get '/' do
    erb(:index)
  end

  post ("/play") do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect ("/play")
  end

  get ("/play") do
    erb(:play)
  end

  post ("/result") do
    $game.hand(params[:hand])
    redirect ("/result")
  end

  get ("/result") do
    erb (:result)
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
