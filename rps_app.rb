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
		session[:ai_choice] = Computer_player.new.attack
		session[:result] = Game.new.decide_winner(session[:player_choice], session[:ai_choice])
		redirect '/result'
	end

	get '/result' do
		@player_name = session[:player_name]
		@player_choice = session[:player_choice]
		@ai_choice = session[:ai_choice]
		@result = session[:result]
		erb(:result)
	end

	get '/play' do
		@player_name = session[:player_name]
		erb(:play)
	end

	run! if app_file == $0
end