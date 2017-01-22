require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/game'
  end

  get '/game' do
    @player = $game.player.name
    erb :game
  end

  post '/challenge' do
    @player_weapon = $game.player.choose_weapon(params[:check])
    @computer_weapon = $game.computer.select_weapon
    @winner = $game.winner
    erb :challenge
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
