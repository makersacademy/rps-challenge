require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = params[:player]
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
    erb(:result)
  end
end
