require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player.name
    @player_choice = $game.player.choice
    erb :play
  end

  post '/choice' do
    $game.player.choice = params[:player_choice]
    redirect '/play'
  end

  get '/winner' do
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
