require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:name])
    $game = Game.new(@player)
    @game = $game
    erb :play
  end

  get '/result' do
    @game.player.set_move(params[:move])
    erb :result
  end

  run! if app_file == $0
end
