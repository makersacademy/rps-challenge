require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/result_calculator'

class Rps < Sinatra::Base

# Welcome page to enter name
  get '/' do
    erb :index
  end

  post '/names' do
    # p params
    # @player = Player.new(params[:player])
    # @computer = Computer.new
    # @game = Game.new(@player, @computer)
    # redirect '/play'
    player = Player.new(params[:player])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
  #  @game.player.player_move($game.computer)
    @computer = Computer.new
    @computer_move = @computer.move
    @player_move = params[:player_move]
    @final_result = ResultCalculator.new(@player_move, @computer_move)
    @final_result.who_won
    erb :result
  end

  run! if app_file == $0
end
