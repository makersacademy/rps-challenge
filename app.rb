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
    opponent = Computer.new
    $game = Game.new(player, opponent)
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player.name
    @player_choice = $game.player.choice
    @opponent_name = $game.opponent.name
    @opponent_choice = $game.opponent.choice
    erb :play
  end

  post '/choice' do
    $game.player.choice = params[:player_choice]
    $game.opponent.make_choice
    redirect '/play'
  end

  get '/winner' do
    @player_name = $game.player.name
    @player_choice = $game.player.choice
    @opponent_name = $game.opponent.name
    @opponent_choice = $game.opponent.choice
    @winner = $game.winner($game.player, $game.opponent)
    erb :winner
  end

  after '/winner' do
    $game.player.choice = nil
    $game.opponent.choice = nil
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
