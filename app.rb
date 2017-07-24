require 'sinatra/base'
require './lib/player'
require './lib/weapon'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name])
    # player_1 = Player.new(params[:player_1_name])
    # @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    # @game = Game.instance
    # @player_1_name = @game.player_1.name
    @player_1_name = $player_1.name
    erb :play
  end

  post '/weapon-choice' do
    $weapon_choice = Weapon.new(params[:weapon_choice])
    # $weapon_choice.weapon=($weapon_choice.weapon)
    @player_1_name = $player_1.name
    # @game = Game.instance
    redirect '/ready'
  end

  get '/ready' do
    # @game = Game.instance
    # @player_1_name = @game.player_1.name
    @player_1_name = $player_1.name
    @weapon_choice = $weapon_choice.weapon=($weapon_choice.weapon)
    erb :ready
  end

  get '/result' do
    # @game = Game.instance
    # @player_1_name = @game.player_1.name
    @player_1_name = $player_1.name
    @weapon_choice = $weapon_choice.weapon=($weapon_choice.weapon)
    $computer = Computer.new
    @computer_choice = $computer.weapon
    @game = Game.new(@weapon_choice, @computer_choice)
    erb @game.result
  end

  run if app_file == $0
end
