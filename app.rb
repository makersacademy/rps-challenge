require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Application

	get '/' do
		erb :index
	end

	post '/play' do
		@player = Player.new(params[:player_1_name])
		@game = Game.create
		erb :play
	end

	post '/result' do
		@game = Game.instance
		@choice = @game.player_choice(params[:choice])
		@computer_choice = @game.computer_choice
		erb :result
	end

run! if app_file == $0

end
