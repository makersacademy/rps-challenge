require 'sinatra'
require './lib/player.rb'

class Rps < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end

	post '/name' do
		$player = Player.new(params[:player])
		redirect '/play'
	end

	get '/play' do
		@player_name = $player.name
		erb :play
	end

	post '/rock' do
		@player_name = $player.name
		redirect '/play'
	end

	# post '/paper' do
	# 	@player_name = $player.name
	# 	redirect '/play'
	# end
	#
	# post '/scissors' do
	# 	@player_name = $player_1.name
	# 	redirect '/play'
	# end

	run if app_file == $0
end
