require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player])
    redirect '/game'
  end

  get '/game' do
    @player_name = $player.name
    erb :game
  end

  post '/get_result' do
    @player_choice = params[:choice]
    @player_name = $player.name
    $cpu = Computer.new
    @cpu_choice = $cpu.get_choice
    game = Game.new(@player_choice, @player_name, @cpu_choice)
    @winner = game.results
    erb :winner
  end

  run! if app_file == $0
end
