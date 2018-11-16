require 'sinatra'

class RPSapp < Sinatra::Base
	get '/' do
		erb(:registration)
	end

	post '/names' do
		@player_name = params[:player_name]
		erb(:play)
	end

	get '/play' do
		erb(:play)
	end

	run! if app_file == $0
end