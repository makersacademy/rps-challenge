require 'sinatra'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
    @computer = Computer.new
  end

  # get '/name' do
  #   $game = Game.new(Player.new(params[:player_1]))
  #   @player_1 = $game.player
  #   @player_1_name = @player_1.name.capitalize!
  #   erb :select
  # end

  get '/name' do
    @player_1 = Player.new(params[:player_1_name])
    # @game = Game.create(@player_1, @computer)
    erb :select
  end

  get '/select' do
    @player_1_weapon = (params[:weapon])
    @computer_weapon = @computer.choose_weapon
    # @game.play(@player_1_weapon, @computer_weapon)
    erb :game
  end






run! if app_file == $0

end
