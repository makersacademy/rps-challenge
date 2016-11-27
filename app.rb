require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(params[:player_name])
    erb :play
  end

  get '/play' do
    @player_name = $game.player1.name
    # @game.play_game(params[:player_weapon])
    erb :play
  end

  post '/game' do
    @player_weapon = $game.play_game(params[:player_weapon])
    redirect '/result'
  end

  get '/result' do
    erb $game.result
  end

  run! if app_file == $0
end
