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
  	@name = session[:name]
  	erb(:start)
  end

  get '/rock' do
  	session[:symbol] = "Rock"
  	@symbol = session[:symbol]
  	erb(:play)
  end

  get '/paper' do
  	session[:symbol] = "Paper"
  	@symbol = session[:symbol]
  	erb(:play)
  end

  get '/scissors' do
  	session[:symbol] = "Scissors"
  	@symbol = session[:symbol]
  	erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
