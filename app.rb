require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base


  get '/home' do
      erb :home
  end

  post '/play' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/nextgame' do
    redirect '/play'
  end

  post '/result' do
    if params[:choice] == 'Rock'
      $player_choice = "Rock"
    elsif params[:choice] == 'Paper'
      $player_choice = "Paper"
    elsif params[:choice] == 'Scissors'
      $player_choice = "Scissors"
    end
    @game = $game
    @game.computer_choice
    $computer_choice = @game.computer
    # p "-----R1"
    # p $computer_choice
    # p @game.computer
    # p "-----R1"
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @player_choice = $player_choice
    @computer_choice = $computer_choice
    @win_lose_draw = @game.win_lose_draw(@player_choice, @computer_choice)
    # p "-----R2"
    # p $computer_choice
    # p @computer_choice
    # p "-----R"
    erb :result
  end
end
