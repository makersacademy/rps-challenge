require 'sinatra/base'
require_relative './lib/logic'

class Game < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
     session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  post '/weapon' do
    session[:player_1_choice] = params[:choice]
    session[:player_2_choice] = ['rock', 'paper', 'scissors'].sample
    redirect '/result'
  end 

  get '/result' do 
  erb :result
  end 
  
  get '/play' do 
    erb :play
  end 
  run! if app_file == $PROGRAM_NAME
end
