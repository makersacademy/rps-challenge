require 'sinatra'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/choice' do
    @game = Game.instance
    @game.player.shape = params[:shape]
    redirect '/end'
  end

  get '/end' do
    @game = Game.instance
    @game.computer.choice
    erb :end
  end

  run! if app_file == $0
end
