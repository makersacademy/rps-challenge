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
    @game = Game.instance
    erb :game
  end

  post '/game' do
    player1 = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(player1, computer)
    redirect '/play'
  end

  post '/winner' do
    @game = Game.instance
    choice = params[:rps]
    @player_choice = @game.player.player_choice(choice)
    @computer_choice = @game.computer.random_choice
    @result = @game.result
    erb :winner
  end

  run! if app_file == $0
end