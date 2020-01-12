require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/weapon'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $game = Game.new
    redirect '/play'
  end

  get'/play' do
    @game = $game
    @player_1 = $player_1
    erb :play
  end

  get '/runMethod' do
    @game = $game
    $player_choice = (params[:choice])
    p "your choice #{$player_choice}"
    redirect '/outcome'
  end

  get '/outcome' do
    @player_choice = $player_choice
    @game = $game
    @player_1 = $player_1
    @computer_choice = Computer.new.weapon
    p "your choice #{$player_choice}"
    p "computer choice #{@computer_choice}"
    p $player_1
    player_weapon = Weapon.new($player_choice)
    computer_weapon = Weapon.new(@computer_choice)
    @player_1.weapon = player_weapon
    @result = @game.who_won(@player_1, computer_weapon)
    erb :outcome
  end
end
