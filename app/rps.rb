require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    session[:player_name] = params[:player_name]
    session[:player_name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:player_name]
    erb :game
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    p params
    @choice = session[:choice]
    erb :result
  end

  get '/css/style.css' do
    scss :styles
  end
end
