require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Rps < Sinatra::Base
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end

  post '/options' do
    mode = params[:mode]
    if mode == "sp" then redirect '/singleplay' else redirect '/multiplay' end
  end

  post '/name' do
    player1 = Player.new(params[:player])
    $game = Game.new(player1)
    redirect '/play'
  end

  post '/multiname' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/playerone'
  end

  post '/rps' do
    @rps = params[:rps]
    player = $game.player1
    player.select_rps(@rps.to_sym)
    redirect '/duel'
  end

  post '/rpsplayerone' do
    @rps = params[:rps]
    player1 = $game.player1
    player1.select_rps(@rps.to_sym)
    redirect '/playertwo'
  end

  post '/rpsplayertwo' do
    @rps = params[:rps]
    player2 = $game.player2
    player2.select_rps(@rps.to_sym)
    redirect '/multiduel'
  end

  get '/singleplay' do
    erb :singleplay
  end

  get '/multiplay' do
    erb :multiplay
  end

  get '/play' do
    @player = $game.player1
    erb :play
  end

  get '/playerone' do
    @player1 = $game.player1
    erb :playerone
  end

  get '/playertwo' do
    @player2 = $game.player2
    erb :playertwo
  end

  get '/duel' do
    @player = $game.player1
    $game.auto_choose
    @pc = $game.player2
    @winner = $game.winner
    erb :duel
  end

  get '/multiduel' do
    @player1 = $game.player1
    @player2 = $game.player2
    @winner = $game.winner
    erb :multiduel
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
