require "sinatra"
require "sinatra/reloader"
#require "./rps.rb"

class GameApp < Sinatra::Base
	get '/' do
		erb :index
	end

	post '/game' do
		@options = ["rock", "paper", "scissors"]
		erb :game
	end
end