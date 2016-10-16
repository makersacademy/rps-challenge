require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:name])
    player2 = Computer.new
    $game = Game.new(player1, player2)
    redirect '/choose-weapon'
  end

  get '/choose-weapon' do
    @game = $game
    erb :choose_weapon
  end

  post '/weapon' do
    $game.player1.weapon = params[:weapon].to_sym
    $game.player2.choose
    redirect :winner
  end

  get '/winner' do
    @game = $game
    erb :winner
  end

  run! if app_file == $0
end
