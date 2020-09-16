require "sinatra/base"

class RPS < Sinatra::Base
	enable :sessions
  get '/' do
	erb :index
	end
	
	post '/names' do
		@player1 = params[:player1]
		@player2 = params[:player2]
		erb :play
	end 
  
  run! if app_file == $0
end
