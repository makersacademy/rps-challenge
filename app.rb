require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
     player1 = Player.new(params[:player])
     @game = Game.create(player1)
    # $player = Player.new(params[:player])
    # @player = $player
    erb(:name)
  end
  # could make ai class to pass to game

  get '/game' do
    @game = Game.instance
    # @player = $player
    erb(:game)
  end

  post '/match' do
    @game = Game.instance
    # @player = $player
    @game.player.choice_log << params[:choice]
    erb(:match)
  end

run! if app_file == $0

end
