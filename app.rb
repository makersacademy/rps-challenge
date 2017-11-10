require 'sinatra'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    erb :select
  end

  get '/select' do
    @player_1_weapon = @game.player_1.weapon(params[:weapon])
    @computer_weapon = @game.player_2.weapon
    erb :game
  end

  get '/play again' do
    erb :index
  end

  run! if app_file == $0
end
