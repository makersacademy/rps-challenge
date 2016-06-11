#controller file for Rock Paper Scissors

require 'sinatra'

get '/' do 
	@name = params[:name]
	erb :index
end

post '/named-player' do
	p params
	@name = params[:name]
	erb :named_player
end