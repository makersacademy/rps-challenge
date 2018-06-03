require 'sinatra/base'
require './lib/spirit_animal_battle'

class PairingBattle < Sinatra::Base

	get '/' do
		erb :specify_player_name
	end


	post '/save_name' do
		$player_name = params[:player_name] unless $player_name
		redirect '/choose_your_spirit_animal'
	end


	get '/choose_your_spirit_animal' do
		erb :choose_spirit_animal
	end


	post '/save_spirit_animal_choice' do
		p1 = params[:spirit_animal]
		g1 = SpiritAnimalBattle.new.game_choice

		$spirit_animal = p1
		$computer = g1

		$winner_is = SpiritAnimalBattle.new.pair_up(p1,g1)
		redirect '/fight'
	end


	get '/fight' do
		erb :fight
	end


	run! if app_file == $0
end