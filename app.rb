require 'sinatra'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/name' do
    $game = Game.new(Player.new(params[:player_1]))
    @player_1 = $game.player
    @player_1_name = @player_1.name.capitalize!
    erb :select
  end

  get '/select' do
    @player_1 = $game.player
    @player_1_name = @player_1.name
    @player_1_weapon = @player_1.choose_weapon(params[:weapon])
    @computer_weapon = $game.computer_choice
    $game.play(@player_1_weapon,@computer_weapon)
    erb :game
  end




run! if app_file == $0

end
