require 'sinatra'
require 'sinatra/base'
	
class RPS < Sinatra::Base
	enable :sessions
	  get '/' do
	    erb :index
    end
    
    post '/name' do
      session[:name_message] = params[:player]
      redirect '/play'
    end

    get '/play' do
      @name = session[:name_message]
	    erb :play
    end
    
    post '/move' do
      session[:move_message] = params[:name]
      redirect '/play'
    end
	  # start the server if ruby file executed directly
	  run! if app_file == $0
end