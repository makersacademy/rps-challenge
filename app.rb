require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/choose'
  end

  get '/choose' do
    @player = session[:name]
    erb(:choose)
  end

  post '/choose' do
    session[:choice] = params[:choice]
    redirect '/start'
  end

  get '/start' do
    @choice = session[:choice]
    erb(:start)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
