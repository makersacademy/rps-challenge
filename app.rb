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
		Game.game = Game.new(params[:player_1_name], params[:player_2_name])
		redirect '/play'
	end

	get '/play' do
		erb :play
	end

end

