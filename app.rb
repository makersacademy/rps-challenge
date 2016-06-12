#controller file for Rock Paper Scissors

require 'sinatra'

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
	erb :rock
end

get '/paper' do
	erb :paper
end

get '/scissors' do
	erb :scissors
end