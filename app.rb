require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:Player_name])
    $computer = Computer.new
    $game = Game.new($player, $computer)
    redirect '/play'
  end

  get '/play' do
    @player = $player
    @computer = $computer
    erb :play
  end

  post '/play' do
    $player.choice = params[:Player_choice]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @computer = $computer
    @computer.randomizer
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
