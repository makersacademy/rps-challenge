require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :home
  end

  post '/begin_single_player' do
    p params
    $player_1 = Player.new(params[:player_1])
    $computer = Computer.new("Dwayne")
    redirect '/single_player_game'
  end

  get '/single_player_game' do
    @player_1_name = $player_1.name
    @computer_name = $computer.name
    erb :single_player
  end

  post '/calculate_results' do
    $game = Game.new
    $game.calculate_result(params[:choice],$computer.random_move)
    redirect '/results'
  end

  get '/results' do
    @result = $game.result
    @player_1_name = $player_1.name
    erb :results
  end
   
  run! if app_file == $0
end