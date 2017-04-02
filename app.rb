require 'sinatra/base'
require './lib/computer'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect('/choose_weapon')
  end

  get '/choose_weapon' do
    @player_name = $game.player.name
    erb(:choose_weapon)
  end

  post '/weapon' do
    $weapon = params[:weapon_of_choice]
    $computer_weapon = $game.computer.choice
    redirect('/play')
  end

  get '/play' do
    @weapon = $weapon
    @computer_weapon = $computer_weapon
    erb(:play)
  end



end
