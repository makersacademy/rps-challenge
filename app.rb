#controller file for Rock Paper Scissors

require 'sinatra'
require_relative './lib/computer'

get '/' do 
	@name = params[:player_name]
	erb :index
end

post '/named-player' do
	p params
	@name = params[:player_name]
	erb :named_player
end

get '/rock' do
	@computer = Computer.new
	erb :rock
end

get '/paper' do
	@computer = Computer.new
	erb :paper
end

get '/scissors' do
	@computer = Computer.new
	erb :scissors
end