require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class RpsWeb < Sinatra::Base

	before do
		@game = Game.game
	end

	get '/' do
		erb :index
	end

	post '/register' do
		player_1 = Player.new(params[:player_1_name])
		player_2 = Player.new(params[:player_2_name]) unless params[:player_2_name].empty?
		Game.game = Game.new(player_1, player_2)
		redirect '/play'
	end

	get '/play' do
		erb :play
	end

end

