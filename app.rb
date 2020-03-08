require 'sinatra'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @name = $game.player.name
    erb :play
  end

  post '/play' do
    @name = $game.player.name
    @shape = params[:shape]
    erb :play
  end

  run! if app_file == $0
end