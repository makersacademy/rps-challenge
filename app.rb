require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do 
		@name = params[:player_name]
		erb :index
  end

  post '/names' do
  	@name = params[:player_name]
 		erb :names
 	end


end