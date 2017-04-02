require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect('/player_choice')
  end

  get '/player_choice' do
    @player = $game.player
    erb(:player_choice)
  end

  get '/computer_choice' do
    @player = $game.player
    @player.send(params[:choice].downcase)
    erb(:computer_choice)
  end

  get '/result' do
    @player = $game.player
    @computer = $game.computer
    @computer.choosing
    @game = $game
    erb(:result)
  end

end
