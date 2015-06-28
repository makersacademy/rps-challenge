require 'sinatra/base'
require './lib/game'
require './lib/ai'
require './lib/player'
require './lib/choices'

class RpsWeb < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  get '/startgame' do
    @name = params[:name]
    $game = Game.new(Player,AI)
    erb :game
  end

  get '/playgame' do
    @choice = params[:choices]
    choices_hash = {'Rock' => Choices.rock,
                    'Paper' => Choices.paper,
                    'Scissors' => Choices.scissors}
    player_choice = $game.player_1.choose(choices_hash[@choice])
    $game.play(player_choice)
    @aiChoice = $game.selection_2

    @player_win = $game.player_1.won?


    erb :endgame
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
