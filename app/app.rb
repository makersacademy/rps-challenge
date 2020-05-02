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
  
  post '/game' do
    session[:rps] = params[:rps]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @rps = session[:rps]
    erb :play
  end

end