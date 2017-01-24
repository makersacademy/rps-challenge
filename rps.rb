require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

#::???::
#
# Is the succession of GET / POST requests correct?
# How could it be better?
#
# I am not sure about the use of variables in the controller and across POST and GET requests.
# What is the best practice? How could it be better?
#
#


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/game'
  end

  get '/game' do
    @game = Game.instance
    @player = @game.player.name
    erb :game
  end

  post '/challenge' do
    @game = Game.instance
    @player_weapon = @game.player.choose_weapon(params[:check])
    @computer_weapon = @game.computer.select_weapon
    @winner = @game.winner
    erb :challenge
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
