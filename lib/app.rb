require "sinatra"
require "sinatra/reloader"
require_relative "rps"

#class GameApp < Sinatra::Base
	get '/' do
		erb :index
	end

	post '/game' do
		@name = params[:name]
		@options = ["rock", "paper", "scissors"]
		erb :game
	end

	post '/outcome' do
		@options = ["rock", "paper", "scissors"]
		@move = params[:move]
		@comp_move = @options.sample
		@result = decide_winner(@move, @comp_move)
		erb :outcome
	end
#end