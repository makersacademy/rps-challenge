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
    session[:mode] = params[:mode]
    redirect '/name'
  end

  post '/name' do
    player1 = Player.new(params[:player1])
    if session[:mode] == "mp"
      player2 = Player.new(params[:player2])
    else
      player2 = Player.new("Computer")
    end
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  post '/rps' do
    @rps = params[:rps]
    player1 = $game.player1
    player1.select_rps(@rps.to_sym)
    if session[:mode] == "sp" then redirect '/duel' else redirect '/playertwo' end
  end

  post '/rpsplayertwo' do
    @rps = params[:rps]
    player2 = $game.player2
    player2.select_rps(@rps.to_sym)
    redirect '/duel'
  end

  get '/name' do
    @mode = session[:mode]
    erb :name
  end

  get '/play' do
    @player = $game.player1
    erb :play
  end

  get '/playertwo' do
    @player = $game.player2
    erb :playertwo
  end

  get '/duel' do
    @player1 = $game.player1
    @player2 = $game.player2
    $game.auto_choose if session[:mode] == "sp"
    @winner = $game.winner
    erb :duel
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
