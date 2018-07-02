require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player1_name])
    computer = Computer.new
    $game = Game.new(player_1, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/weapon' do
    @game = $game
    @game.player_action(params[:weapons])
    @game.computer_action
    redirect '/battle'
  end

  get '/battle' do
    @game = $game
    erb :battle
  end

  run if app_file == $0
end
