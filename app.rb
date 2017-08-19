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
		redirect to '/play'
	end

	get '/play' do
		@player = session[:player]
  		erb :play
	end

	run! if app_file == $PROGRAM_NAME
end