require 'sinatra/base'
require_relative '../lib/player.rb'
require_relative '../lib/computer.rb'
require_relative '../lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new params[:player_name]
    $computer = Computer.new
    redirect '/play'
  end

  post '/choice' do
    choice = params[:player_choice]
    $player1.player_choice(choice)
    redirect '/play'
  end

  get '/play' do
    @player_name = $player1.player_name
    @player_choice = $player1.print_choice
    @computer_choice = $computer.print_choice
    $game = Game.new(@player_choice, @computer_choice)
    @outcome = $game.compare
    erb(:play)
  end

end
