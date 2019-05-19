require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/start'
  end

  get '/start' do
    @player = session[:player]
    erb :start
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @choice = session[:choice]
    erb :result
  end
end
