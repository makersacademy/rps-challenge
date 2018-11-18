require 'sinatra/base'
require_relative 'lib/game.rb'
class RPSWEB < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end

	post '/name' do
		$game = Game.new(params[:name])
		redirect '/play'
	end

	get '/play' do
		@name_player = $game.name_player
		erb(:play)
	end

	post '/choice' do
		$game.player_weapons(params[:your_choice])
		redirect '/result'
	end

	get '/result' do
		@game = $game
		@result = $game.result
		erb(:result)
	end
end