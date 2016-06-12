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

 	get '/rock' do
 		erb :rock
 	end

 	get '/paper' do
 		erb :paper
 	end

 	get '/scissors' do
 		erb :scissors
 	end

run! if app_file == $0
end