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
    $player = Player.new params[:player_name]
    $computer = Computer.new
    $game = Game.new($player, $computer)
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/choose' do
    $player.choose_weapon(params[:choice].to_sym)
    $computer.choose_weapon
    redirect '/choose'
  end

  get '/choose' do
    erb $game.victor
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
