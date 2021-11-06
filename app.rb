require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    # @name = $player1.name
    # @computer = $computer.name
    @game = $game
    erb :game
  end

  post '/game' do
    player1 = Player.new(params[:name])
    computer = Computer.new
    $game = Game.new(player1, computer)
    redirect '/play'
  end

  get '/winner' do
    erb :winner
  end

  run! if app_file == $0
end