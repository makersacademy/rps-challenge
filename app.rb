require 'sinatra/base'
require './lib/user'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/user_name' do
    session[:user] = User.new(params[:user])
    session[:move] = params[:move]
    redirect '/display'
  end

  get '/display' do
    @user = session[:user]
    @move = session[:move]
    erb :user_name
  end

  run! if app_file == $0
end
