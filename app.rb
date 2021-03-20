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
    redirect '/result'
  end

  get '/result' do
    @player_choice = $player_choice
    erb :result
  end
end
