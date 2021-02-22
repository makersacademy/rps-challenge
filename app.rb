require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :homepage
    #'Rock, Paper, Scissors'
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect :play
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/results' do
    @player_name = session[:player_name]
    erb :results
  end



  run! if app_file == $0
end