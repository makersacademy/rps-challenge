
require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
	end
	
	post '/name' do
		erb :play
		@player_name = params[:player_name]
	end 


	run! if app_file == $0
end 