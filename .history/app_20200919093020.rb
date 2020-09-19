
require 'sinatra/base'

class RPS < Sinatra::Base
	enable :sessions
  get '/' do
    erb :index
	end
	
	post '/name' do
		$player = Player.new(params[:player_name])
		session[:player_name] = params[:player_name]
		redirect '/play'
	end 

	get '/play' do
		@player_name = $player.name
		erb :play
	end 

	get '/playing' do
		@player_name = $player.name
		erb :playing
	end 
	run! if app_file == $0
end 
