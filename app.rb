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
    player_1 = Player.new(params[:player_1_name])
    computer = Computer.new
    $game = Game.new(player_1, computer)
    redirect '/play'
  end

  get'/play' do
    @game = $game
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
    @computer_choice = @game.computer.weapon
    p "your choice #{$player_choice}"
    p "computer choice #{@computer_choice}"
    player_weapon = Weapon.new($player_choice)
    computer_weapon = Weapon.new(@computer_choice)
    @game.outcome
    @result = @game.who_won
    erb :outcome
  end

end
