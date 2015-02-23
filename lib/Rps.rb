require 'sinatra/base'
require './lib/computer'
require './lib/Game'
require './lib/player'

class Rps < Sinatra::Base

	computer = Computer.new
	player = Player.new

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
  	@name = params[:name]
  	@weapon = params[:weapon]
  	player_weapon = @weapon
  	computer_pick = computer.pick
  	@computer_weapon = computer_pick
  	@winner = game.winner(player_weapon.to_s.downcase, computer_pick.to_s.downcase)
  	erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

