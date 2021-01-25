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

  # post'/names' do 
  #   $player_1 = Player.new(params[:P1])
  #   redirect '/play' 
  # end

  # get '/play' do 
  #   @player_1 = $player_1.name
  #   erb :play
  # end

  # get '/move' do 
  #   @player_1 = $player_1.name
  #   erb :move
  # end

  post'/names' do 
    $player_1 = Player.new(params[:P1])
    redirect '/play' 
  end

  get '/play' do 
    @player_1 = $player_1.name
    erb :play
  end

  get '/paper' do 
    @player_1 = $player_1
    @player_1.move("paper")
    $game = Game.new(@player_1)
    @outcome = $game.turn(@player_1)
    erb :paper
  end

  get '/rock' do 
    @player_1 = $player_1
    @player_1.move("rock")
    $game = Game.new(@player_1)
    @outcome = $game.turn(@player_1)
    erb :rock
  end

  get '/scissors' do 
    @player_1 = $player_1
    @player_1.move("scissors")
    $game = Game.new(@player_1)
    @outcome = $game.turn(@player_1)
    erb :scissors
  end
  
  # $player_1.move(params[])
  # get '/turn' do 
  #   @player_1 = $player_1.name
  #   erb :move
  # end

  run! if app_file == $0
end