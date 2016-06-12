#controller file for Rock Paper Scissors

require 'sinatra/base'
require_relative './lib/computer'

class RPS < Sinatra::Base

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

  # start the server if ruby file executed directly
run! if app_file == $0
end