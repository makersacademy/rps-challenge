require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/result' do
    @session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @choice = session[:choice]
    erb :result
  end

end
