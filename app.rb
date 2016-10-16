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
    @game = Game.create(player)
    redirect ("/play")
  end

  get ("/play") do
    @game = Game.instance
    erb(:play)
  end

  post ("/result") do
    @game = Game.instance
    @game.hand(params[:hand])
    redirect ("/result")
  end

  get ("/result") do
    @game = Game.instance
    erb (:result)
  end

  #start the server if ruby file executed directly
  run! if app_file == $0
end
