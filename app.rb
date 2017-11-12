require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    @singleplayer = true if $game.player_2.name == ""
    @singleplayer ? redirect('/game') : redirect('/multiplayer')
  end

  get '/game' do
    @player1 = $game.player_1
    @player2 = $game.player_2
    @game = $game
    erb :game
  end

  get '/multiplayer' do
    @player1 = $game.player_1
    @player2 = $game.player_2
    erb :multi_game
  end

  post '/result' do
    choice = params[:Rock] unless params[:Rock].nil?
    choice = params[:Paper] unless params[:Paper].nil?
    choice = params[:Scissors] unless params[:Scissors].nil?
    choice = params[:Lizard] unless params[:Lizard].nil?
    choice = params[:Spock] unless params[:Spock].nil?

    $game.player_1.choice = choice
    $game.random_choice
    $game.result

    redirect('/game')
  end

  post '/reset' do
    $game.reset_game
    redirect('/game')
  end
end
