require 'sinatra/base'

class Fight < Sinatra::Base

  enable :sessions

	get '/test' do 
		"Test infrastructure working!"
	end

  get '/' do
  	erb :index
  end

  post '/name' do
  	session[:player_name] = params[:player_name]
    redirect '/arena'
  end

  get '/arena' do
  	@player_name = session[:player_name]
  	erb :arena
  end


end