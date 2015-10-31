require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base

  def game_state
    @player = $game.player
    @player_hand = $game.player_hand
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    game_state
    erb :play
  end

  post '/game' do
    game_state
    erb :game
  end

  post '/rock' do
    $game.rock
    game_state
    erb :game
  end

  post '/paper' do
    $game.paper
    game_state
    erb :game
  end

  post '/scissors' do
    $game.scissors
    game_state
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
