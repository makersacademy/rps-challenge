require 'sinatra'
require './lib/computer.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/name' do

    $player_1 = Player.new((params[:player_1_name]))
    @player_1_name = $player_1.name

    erb :select
  end

  get '/select' do

    @player_1_weapon = $player_1.choose_weapon(params[:weapon]  )
    p $player_1
    @computer_weapon = Computer.new.choose_weapon
    erb :game
  end

  get '/play again' do
    erb :index
  end






run! if app_file == $0

end
