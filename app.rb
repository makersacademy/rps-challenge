require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
	
	get '/' do
		erb :index
	end

	post '/name' do
		player = Player.new(params[:player_name])
		@game = Game.create(player)
		redirect '/play'
	end

	get '/play' do
		@game = Game.instance
		erb :play
	end

	post '/weapon' do
		@game = Game.instance
		@game.player.choose_weapon(params[:choice])
		redirect '/result'
	end

	get '/result' do
		@game = Game.instance
		@game.determine_winner
		erb @game.result
	end

	run! if app_file == $0

end
