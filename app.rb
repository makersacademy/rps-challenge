require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RpsApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    $computer = Player.new("Computer")
    redirect to('/play')
  end

  get '/play' do
    @player_name = $player.name
    @player_move = $player.move
    @computer_move = $computer.move
    @outcome = Game.new.outcome(@player_move, @computer_move)
    erb :play
  end

  post '/move' do
    $player.choose(params[:move])
    computer_move = ["Rock", "Paper", "Scissors"].sample
    $computer.choose(computer_move)
    redirect to('/play')
  end

  run! if app_file == $0
end
