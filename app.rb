require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
      erb :index
  end

  post '/names' do
    p 'In names'
    p params
    session[:user_name] = params[:"user_name"]
    p session
    redirect '/play'
  end

  get '/play' do
    p 'In play'
    p @user_name = session[:user_name]
    erb :welcome
  end

  # post '/welcome' do
  #   erb :names
  # end
    run! if app_file == $0
end
