require 'sinatra'
require './lib/game'
require './lib/computer_player'

class RPSapp < Sinatra::Base
	enable :sessions

	get '/' do
		erb(:registration)
	end

	post '/names' do
		session[:player_name] = params[:player_name]
		redirect '/play'
	end

	post '/choice' do
		session[:player_choice] = params[:player_choice]
		redirect '/result'
	end

	get '/result' do
		@player_choice = session[:player_choice]
		@player_name = session[:player_name]
		@ai_choice = Computer_player.new.attack
		@result = Game.new.decide_winner(@player_choice, @ai_choice)
		erb(:result)
	end

	get '/play' do
		@player_name = session[:player_name]
		erb(:play)
	end

	run! if app_file == $0
end