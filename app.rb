require 'sinatra/base'
require './lib/turn.rb'
require './lib/skynet.rb'


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
		@turn = Turn.new(session)
		erb :play
	end

	post '/play' do
		session[:player_shape] = params[:shape].downcase.to_sym
		session[:computer_shape] = Skynet.new.shape
		redirect '/play'
	end					

	run! if app_file == $0
end

