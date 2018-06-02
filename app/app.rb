require 'sinatra/base'


class RPSLS < Sinatra::Base

	# Root page requests the player's name
	get '/' do
		erb :specify_player_name
	end

	# Store the player's name ad redirects to the game arena
	post '/save_player_name' do
		$player_name = params[:player_name] unless $player_name
		redirect '/choose_your_warrior'
	end

	# Let the games begin!
	get '/choose_your_warrior' do
		erb :choose_your_warrior
	end

	post '/save_warrior_choice' do
		$player_warrior = params[:player_warrior]
		redirect '/fight'
	end

	get '/fight' do
		erb :fight
	end


end