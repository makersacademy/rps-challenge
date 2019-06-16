require 'sinatra/base'
require_relative './lib/player'

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
    if @player_move == @computer_move
      @outcome = "It's a draw!"
    elsif @player_move == "Rock"
      if @computer_move == "Paper"
        @outcome = "You lose!"
      else
        @outcome = "You win!"
      end
    elsif @player_move == "Paper"
      if @computer_move == "Scissors"
        @outcome = "You lose!"
      else
        @outcome = "You win!"
      end
    elsif @player_move == "Scissors"
      if @computer_move == "Rock"
        @outcome = "You lose!"
      else
        @outcome = "You win!"
      end
    end
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
