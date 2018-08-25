require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/enter_name' do
    player = Player.new(params[:player_name])
    computer = Player.new('COMPUTER')
    @game = Game.create(player, computer)
    @player_name = @game.player.name
    # @player_name = @game.player_name
    erb :play
  end

  post '/play' do
    @game = Game.instance
    @player_move = @game.player.set_move(params[:player_move])
    @computer_move = @game.computer.set_move
    @player_name = @game.player.name
    @computer_name = @game.computer.name
    # @game.result
    erb :game_result
  end

  run! if app_file == $0
end
