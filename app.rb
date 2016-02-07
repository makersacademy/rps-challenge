require 'sinatra/base'
require 'tilt/erb'

class Rps < Sinatra::Base
	
	enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
  	session[:player] = params[:player].Capitalize
  	redirect '/play'
  end

  get '/play' do 
  	@player = session[:player].Capitalize
  	erb :play
  end

  post '/select' do 
  	@player = session[:player].Capitalize
  	@rps = params[:rps]
  	erb :select
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
