require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions
  
  get '/' do
   	erb :index
  end

  post '/name' do
  	session[:name] = params[:player_name]
  	redirect '/play'
  end

  get '/play' do
  	@player_name = session[:name]
  	erb :play
  end

  post '/game' do
  	session[:choice] = params[:choice]
  	redirect '/result'
  end

  get '/result' do
  	@player_name = session[:name]
  	@choice = session[:choice]
  	erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
