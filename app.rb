require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/details' do
    session[:user_name] = params[:user_name]
    redirect '/greeting'
  end

  get '/greeting' do
    @user_name = session[:user_name]
    erb :greeting
  end

  post '/choice' do
    session[:selection] = params[:selection]
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:selection]
    erb :result
  end

  run! if app_file == $0
end
