require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @weapon = session[:weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params[:weapon]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
