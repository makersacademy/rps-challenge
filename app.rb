require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Computer.new
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  post '/rock' do
    @game = $game
    @player1 = @game.player1
    @player1.weapon_selector('Rock')
    redirect '/play'
  end

  post '/paper' do
    @game = $game
    @player1 = @game.player1
    @player1.weapon_selector('Paper')
    redirect '/play'
  end

  post '/scissors' do
    @game = $game
    @player1 = @game.player1
    @player1.weapon_selector('Scissors')
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
