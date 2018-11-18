require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  before do
    @game = Game.create
  end

  get '/' do
    erb :name
  end

  post '/start' do
    $game = Game.new
    $player_1 = params[:player_1]
    @player_1 = $player_1
    erb :start
  end

  post '/result' do
    @game = Game.instance
    @game = $game
    @player_1 = $player_1
    $player_1_move = params[:move]
    @player_1_move = $player_1_move
    $winner = @game.winner(@player_1_move, @game.cpu_move)
    @winner = $winner
    erb :result
  end

  run! if app_file == $0

end
