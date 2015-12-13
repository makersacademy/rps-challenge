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
    @computer_choice = $game.computer.choice
    erb :play
  end

  post '/choice' do
    $game.player.choice = params[:player_choice]
    $game.computer.make_choice
    redirect '/play'
  end

  get '/winner' do
    @player_name = $game.player.name
    @player_choice = $game.player.choice
    @computer_name = $game.computer.name
    @computer_choice = $game.computer.choice
    @winner = $game.winner($game.player, $game.computer)
    erb :winner
  end

  after '/winner' do
    $game.player.choice = nil
    $game.computer.choice = nil
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
