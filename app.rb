require 'sinatra/base'
require_relative './lib/player'

class RoShamBo < Sinatra::Base
	enable :sessions

	get '/' do
		erb(:index)
	end

	post '/names' do
		session[:player_1_name] = params[:player_1_name]	
		# session[:player_2_name] = params[:player_2_name]
		redirect '/play'
	end
	
	get '/play' do
		@player_1_name = session[:player_1_name]
		# @player_2_name = session[:player_2_name]
		erb :play 
	end

	post '/move' do
		session[:player_1_move] = params[:player_1_move]
		redirect '/result'
	end

	get '/result' do
		@player_1_name = session[:player_1_name]
		@player_1_move = session[:player_1_move]
		@player_1 = Player.new(@player_1_name, @player_1_move)
		@computer = Player.new
		@game = Game.new(@player_1, @computer)
		@game.round
		erb :result
	end
		
		
		run! if app_file == $0 # this basically does witchcraft to make the website be a website

end




