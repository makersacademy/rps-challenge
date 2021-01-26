require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
 
  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post'/names' do 
    player_1 = Player.new(params[:P1])
    $game = Game.new(player_1)
    redirect '/play' 
  end

  get '/play' do 
    @game = $game
    erb :play
  end

  get '/paper' do 
    player_1_move = $game.player_1.move("paper")
    player_1 = $game.player_1
    @outcome = $game.turn(player_1)
    erb :paper
  end

  get '/rock' do 
    player_1_move = $game.player_1.move("rock")
    player_1 = $game.player_1
    @outcome = $game.turn(player_1)
    erb :rock
  end

  get '/scissors' do 
    player_1_move = $game.player_1.move("scissors")
    player_1 = $game.player_1
    @outcome = $game.turn(player_1)
    erb :scissors
  end

  run! if app_file == $0
end