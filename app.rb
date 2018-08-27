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
    erb :play
  end

  post '/play' do
    @game = Game.instance
    @player_move = @game.player.weapon_choice(params[:player_move]).to_sym
    @computer_move = @game.computer.weapon_choice
    @player_name = @game.player.name
    @computer_name = @game.computer.name
    @result = @game.result([@player_move, @computer_move])
    erb :game_result
  end

  get '/replay' do
    @game = Game.instance
    @player_name = @game.player.name
    erb :play
  end

  run! if app_file == $0
end
