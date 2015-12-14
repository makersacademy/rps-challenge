require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    # game
    erb :play
  end

  post '/selection' do
    $game.player_1.choose_weapon(params[:weapon].to_sym)
    $game.player_2.choose_weapon
    redirect '/weapon'
  end

  get '/weapon' do
    # game
    erb :weapon
  end

  get '/result' do
    # game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
