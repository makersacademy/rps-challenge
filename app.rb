require 'sinatra/base'

require_relative './lib/player.rb'
require_relative './lib/computer.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/choice' do
    $player.player_move(params[:player_choice])
    redirect '/winner'
  end

  get '/winner' do
    @player_name = $player.name
    @player_choice = $player.player_choice
    @computer_choice = $computer.computer_move
    $game = Game.new($player, $computer)
    @game_winner = $game.winner
    erb :winner
  end

  run! if app_file == $0

end
