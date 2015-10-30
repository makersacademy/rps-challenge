require 'sinatra/base'

class Rps < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
  	p params
  	session[:name] = params[:player_name]
    redirect '/start'
  end

  get '/start' do
  	p params
  	@name = session[:name]
  	erb(:start)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
