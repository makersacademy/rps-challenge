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
    $choice = (params[:choice])
    @weapon = Weapon.new($choice)
    redirect '/outcome'
  end

  get '/outcome' do
    @choice = $choice
    @game = $game
    @game.computer = Computer.new
    @computer_choice = @computer.weapon
    erb :outcome
  end

end
