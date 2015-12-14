require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :login
  end

  post '/login' do
    p1 = Player.new params[:player_name]
    p2 = Computer.new
    $game = Game.new(p1, p2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choose' do
    $game.p1_choose(params[:choice].to_sym)
    $game.p2_choose
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb @game.victor
  end

  post '/2p_login' do
    p1 = Player.new params[:player1_name]
    p2 = Player.new params[:player2_name]
    $game = Game.new(p1, p2)
    redirect '/2p_turn1'
  end

  get '/2p_turn1' do
    @game = $game
    erb :turn_1
  end

  post '/p1_choose' do
    $game.p1_choose(params[:choice].to_sym)
    redirect '/2p_turn2'
  end

  get '/2p_turn2' do
    @game = $game
    erb :turn_2
  end

  post '/p2_choose' do
    $game.p2_choose(params[:choice].to_sym)
    redirect '/result'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
