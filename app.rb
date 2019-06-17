require 'sinatra'
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:player_name] = params[:player_name]
    redirect '/start'
  end

  get '/start' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb :name
  end

  post '/start' do
    session[:choice] = params[:choice]
    redirect '/start'
  end


  run if app_file == $0
end
