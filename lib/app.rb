require 'sinatra/base'
require './lib/game'
require './lib/weapon'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  get '/result' do
    @game = Game.new
    @player_choice = params[:player_choice]
    @game.player_choice(params[:player_choice])

    @computer = Computer.new
    $computer_weapon = Weapon.new(@computer.choice)
    @computer_weapon = $computer_weapon
    erb(@game.result($computer_weapon))
  end
end