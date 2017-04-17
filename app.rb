require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'


class RockPaper < Sinatra::Base


	get "/" do
		erb :index
	end

	post "/names" do
		player1 = Player.new(params[:name])
		computer = Computer.new
		$game = Game.new(player1, computer)
		redirect "/play"
	end

	get "/play" do
		erb :play
		end

	post "/selection" do
		$game.players[0].choose(params[:selection])
		$game.players[1].comp_choose
		redirect "/result"
	end

	get "/result" do
		erb $game.result($game.players[0].choice, $game.players[1].comp_choice)
	end

# start the server if ruby file executed directly
run! if app_file == $0

end