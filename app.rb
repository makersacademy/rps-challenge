require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @game.player.set_move(params[:move])
    erb :result
  end

  run! if app_file == $0
end
