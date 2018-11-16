require 'sinatra'

class RPSapp < Sinatra::Base
	enable :sessions

	get '/' do
		erb(:registration)
	end

	post '/names' do
		session[:player_name] = params[:player_name]
		redirect '/play'
	end

	get '/play' do
		@player_name = session[:player_name]
		erb(:play)
	end

	run! if app_file == $0
end