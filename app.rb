require 'sinatra/base'
require './lib/player.rb'
require './lib/move.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb :play
  end

  post '/move' do
    $rock = params[:ROCK]
    $paper = params[:PAPER]
    $scissors = params[:SCISSORS]
    @player_move = Move.new.player_move
    @computer_move = Move.new.computer_move
    @win_lose = Move.new.win_lose
    erb :move
  end

end
