require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

	enable :sessions

	get '/' do
		erb :index
	end

	post '/name' do
		$player_user = Player.new(params[:player_name])
		redirect '/play'
	end

	get '/play' do
		@player_name = $player_user.name
		erb :play
	end

	get '/buttons_rock' do
		@player_name = $player_user.name
		erb :buttons_rock
	end
	
	get '/buttons_paper' do
		@player_name = $player_user.name
		erb :buttons_paper
	end	

	get '/buttons_scissors' do
		@player_name = $player_user.name
		erb :buttons_scissors
	end						

	run! if app_file == $0
end

