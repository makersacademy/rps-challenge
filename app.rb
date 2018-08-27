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
    erb(:name)
  end
  # could make ai class to pass to game

  get '/game' do
    @game = Game.instance
    erb(:game)
  end

  post '/match' do
    @game = Game.instance
    @game.player.choice_log << params[:choice]
    erb(:match)
  end

  get '/log' do
    @game = Game.instance
    erb(:log)
  end

run! if app_file == $0

end
