require 'sinatra/base'
require './lib/spirit_animal_battle'

class RPSLS < Sinatra::Base

	# Root page requests the player's name
	get '/' do
		erb :specify_player_name
	end

	# Store the player's name ad redirects to the game arena
	post '/save_player_name' do
		$player_name = params[:player_name] unless $player_name
		redirect '/choose_your_spirit_animal'
	end

	# Let the games begin!
	get '/choose_your_spirit_animal' do
		erb :choose_your_spirit_animal
	end

	post '/save_spirit_animal_choice' do
		p1 = params[:player_warrior]
		g1 = SpiritAnimalBattle.new.game_choice

		$player_warrior = p1
		$computer = g1
		
		$winner_is = SpiritAnimalBattle.new.pair_up(p1,g1)
		redirect '/fight'
	end


	get '/fight' do
		erb :fight
	end


end