require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @name = session[:name]
    @user_choice = session[:user_choice]
    erb :play
  end

  post '/play' do
    session[:user_choice] = params[:user_choice]
    redirect to('/play')
  end

  run! if app_file == $0
end
