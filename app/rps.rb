require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    p session[:player_name]
    redirect '/game'
  end

  get '/game' do
    p @name = session[:player_name]
    erb :game
  end

  get '/css/style.css' do
    scss :styles
  end
end
