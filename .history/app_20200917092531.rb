require "sinatra/base"
require './lib/player'
class RPS < Sinatra::Base
	enable :sessions
  get '/' do
	erb :index
	end
	
	post '/names' do
		$player1 = Player.new(params[:player1])
		$player2 = Player.new(params[:player2])
		redirect '/play'
	end 

	get '/play' do
		@player1 = session[:player1]
		@player2 = session[:player2]
		erb :play
	end  
	
	get '/playing' do 
		@player1 = session[:player1]
		@player2 = session[:player2]
		erb :playing
	end 

  run! if app_file == $0
end
