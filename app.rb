require 'sinatra/base'

class RPS < Sinatra::Base
	enable :sessions
	set :sessions, true
	set :session_secret, '7389575'

	get '/' do
		erb(:index)
	end

	post '/user' do
		session[:user] = params[:user]
		redirect to('/play')
	end

	get '/play' do
		@user = session[:user]
		erb :play
	end

	post '/rock' do
		@user = session[:user]
		erb :rock
	end

	post '/paper' do
		@user = session[:user]
		erb :paper
	end

	post '/scissors' do
		@user = session[:user]
		erb :scissors
	end

	post '/play' do
		@user = session[:user]
		erb :play
	end

	run! if app_file == $0
end