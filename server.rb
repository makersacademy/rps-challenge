require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    redirect to('/no_name') if params[:username] == ''
    session[:username] = params[:username]
    @username = session[:username]
    redirect to('/welcome')
  end

  get '/no_name' do
    'hi'
    erb :sign_up
  end

  get '/welcome' do
    erb :welcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
