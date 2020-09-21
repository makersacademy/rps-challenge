
require 'sinatra/base'
require './lib/player.rb'
class RPS < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
	end
	
	post '/name' do
		session[:player_name] = params[:name]
		redirect '/play'
	end 

	get '/play' do
		@player_name = $player.name 
		erb :play
	end

	post 'play' do
		session[player_move] = params[:move]
	end

	run! if app_file == $0
end 
