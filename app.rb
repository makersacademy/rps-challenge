require 'sinatra'
require 'sinatra/base'
require 'rack'

class RPS < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end

	post '/names' do
		session[:player] = params['player']
		session[:display] = false
		redirect to '/play'
	end

	get '/play' do
		@player = session[:player]
		@choice = session[:choice]
		erb :play
	end

	post '/turn' do
		session[:choice] = params[:choice]
		session[:display] = true
		redirect to '/play'
	end

	run! if app_file == $PROGRAM_NAME
end