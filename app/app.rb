require 'sinatra/base'

class MyRockApp < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/user' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

end