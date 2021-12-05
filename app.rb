require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
	enable :sessions

	configure :development do
		register Sinatra::Reloader
	end


	get "/" do
		erb :index
	end

	post '/data' do
		session[:player_1_name] = Player.new(params[:player_1_name])
		redirect '/play'
	end
	
	get '/play' do
		@player_1 = session[:player_1_name]
		erb :play
	end

	post '/battle' do
		session[:player_choice] = params[:player_choice]
		session[:computer_choice] = Computer.new.choice
		redirect '/battle'
	end 

	get '/battle' do
		@player_1_choice = session[:player_choice]
		@computer_choice = session[:computer_choice]
		erb :battle
	end

	run! if app_file == $0
end