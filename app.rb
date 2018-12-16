require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/user_name' do
    session[:user_name] = params[:user_name]
    session[:move] = params[:move]
    redirect '/display_name'
  end

  get '/display_name' do
    @user_name = session[:user_name]
    @move = session[:move]
    erb :user_name
  end

  run! if app_file == $0
end
