require 'sinatra'
require 'sinatra/base'
require 'rack'

class RPS < Sinatra::Base
	enable :sessions

	get '/' do
		erb :index
	end

	post '/names' do
		session[:player1] = params['player1']
		session[:player2] = params['player2']
		redirect to '/play'
	end

	get '/play' do
		@player1 = session[:player1]
  		@player2 = session[:player2]
  		erb :play
	end

	run! if app_file == $PROGRAM_NAME
end