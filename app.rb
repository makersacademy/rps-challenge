require 'sinatra/base'

class RPS < Sinatra::Base

	enable :sessions

	get '/' do
		erb :index
	end

	post '/name' do
		session[:player_name] = params[:player_name]
		redirect '/play'
	end

	get '/play' do
		@player_name = session[:player_name]
		@shape = session[:shape]
		erb :play
	end

	post '/play' do
		session[:shape] = params[:shape]
		redirect '/play'
	end					

	run! if app_file == $0
end

