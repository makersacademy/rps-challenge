require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

 	post '/names' do 
 		@name = params[:name]
 		erb :name
 	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
