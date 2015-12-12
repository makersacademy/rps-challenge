require 'sinatra/base'

class Rps < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
  end

 	post '/names' do 
 		session[:name] = params[:name]
 		redirect '/name'
 	end

 	get '/name' do
 		@name = session[:name]
 		erb :name
 	end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
