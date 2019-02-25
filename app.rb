require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
      erb :index
  end

  post '/names' do
    session[:user_name] = params[:"User_name"]
    redirect '/play'
  end

  get '/play' do
    @user_name = session[:user_name]
    erb :welcome
  end

  # post '/welcome' do
  #   erb :names
  # end
    run! if app_file == $0
end
