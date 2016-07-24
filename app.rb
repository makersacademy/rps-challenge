require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/robot_player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_1_name])
    player2 = RobotPlayer.new
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  post '/rock' do
    @game = Game.instance
    @player1 = @game.player1
    @player1.weapon_choice('Rock')
    redirect '/play'
  end

  post '/paper' do
    @game = Game.instance
    @player1 = @game.player1
    @player1.weapon_choice('Paper')
    redirect '/play'
  end

  post '/scissors' do
    @game = Game.instance
    @player1 = @game.player1
    @player1.weapon_choice('Scissors')
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
