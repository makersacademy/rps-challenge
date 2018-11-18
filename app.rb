require 'sinatra/base'
require_relative 'lib/game.rb'
class RPSWEB < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end

	post '/choice' do
		$game = Game.new(params[:name],params[:choice])
		redirect '/result'
	end

	get '/result' do
		@name_player = $game.name_player
		@player_weapon = $game.player_weapon
		erb(:result)
	end
end