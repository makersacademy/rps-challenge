require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Application

	get '/' do
		erb :index
	end

	post '/play' do
		@player = Player.instance || @player = Player.create(params[:player_1_name])
		@game = Game.create
		erb :play
	end

	post '/result' do
		@game = Game.instance
		@p_choice = @game.player_choice(params[:choice])
		@c_choice = @game.computer_choice
		erb :result
	end

run! if app_file == $0

end
