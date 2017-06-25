require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player_name = params[:player]
    player = Player.new(player_name)
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    choice = params[:choice]
    @game = Game.instance
    @game.player.weapon = choice
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb @game.result
  end
end
