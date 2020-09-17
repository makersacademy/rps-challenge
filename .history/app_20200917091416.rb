require "sinatra/base"

class RPS < Sinatra::Base
	enable :sessions
  get '/' do
	erb :index
	end
	
	post '/names' do
		session[:player1] = params[:player1]
		session[:player2] = params[:player2]
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
