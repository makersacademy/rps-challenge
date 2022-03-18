require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    @move_1 = $game.player1.move
    @move_2 = session[:move_2]
    @winner = session[:winner]

    puts "The winner is #{@winner}"
    erb :play
  end

  post '/play' do
    $game = Game.new(Player.new(params[:player_1]))
    redirect '/play'
  end

  post '/move' do
    $game.player1.move = params[:move]
    session[:move_2] = $game.player2.random_move
    session[:winner] = $game.winner
    redirect '/play'
  end

  run! if app_file == $0
end