require 'sinatra/base'
require './lib/computer'
require './lib/Game'
require './lib/player'

class Rps < Sinatra::Base

  GAME = Game.new

	set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, Proc.new { File.join(root, '..', "public") }

  get '/' do
    erb :index
  end

  get '/game' do
  	erb :game
  end

  post '/game' do
  	game = Game.new
    computer = Computer.new
    puts '===' * 10
  	puts params.inspect
  	@weapon = params[:weapon]
  	player_weapon = @weapon
  	computer_pick = computer.pick
  	@computer_weapon = computer_pick
  	@winner = game.winner(player_weapon.to_sym, computer_pick.to_sym)
  	erb :winner
  end

  get '/blah' do
    # at this stage we have 2 players in the game and both players picked something
    # @player = game.winner
    # erb :blah
    # on this page maybe we have:
    # Giego wins with rock vs computer with scissors
    # <%= @player.name %>wins with <>
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

