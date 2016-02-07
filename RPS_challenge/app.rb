require 'sinatra/base'

class RPS_challenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/enter_names' do
    erb :enter_names
  end

  post '/names' do
    session[:firstname] = params[:firstname]
    session[:lastname]  = params[:lastname]
    redirect to('/play')
  end

  get '/play' do
    @firstname = session[:firstname]
    @lastname  = session[:lastname]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
