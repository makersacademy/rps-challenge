require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class Game_rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    $computer = Computer.new
    redirect :play
  end

  get '/play' do
    @player = $player
    @computer = $computer
    erb :play
  end

  post '/user_vs_pc' do
    rps = params[:rps].to_sym
    p rps
    $game = Game.new($player.user_choose_weapon(rps), $computer.choose_rand)
    redirect :result
  end

  get '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
