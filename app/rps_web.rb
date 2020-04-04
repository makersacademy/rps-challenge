require 'sinatra/base'

class RPSWeb < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:user_name] = params[:name]
    redirect '/choose'
  end

  get '/choose' do
    @player_name = session[:user_name]
    erb :choose
  end

  post '/choose' do
    redirect '/choose'
  end

end