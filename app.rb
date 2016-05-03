require "sinatra/base"
require "./lib/game"
require "./lib/player"

class Rps < Sinatra::Base

	enable :sessions

	before do	
		@game = Game.instance
	end

	get "/" do
		erb :index
	end

	post "/choice" do
		player1 = Player.new(params[:player_name].capitalize, params[:sign].capitalize)
		@game = Game.create(player1)
		erb :choice
	end

	post "/outcome" do
		@game.aleatory_rival
		@game.outcome
		erb :outcome
	end

	run! if app_file == $0
end