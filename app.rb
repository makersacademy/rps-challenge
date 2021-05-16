require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello! Welcome to Rock, Paper, Scissors!"
    "Please enter your name below to begin"
    erb :index
  end

  post '/player_name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do 
    @player_1 = session[:player_1]
    erb :play
  end

  get '/rock' do 
    "You played Rock!"
  end

  get '/paper' do
    "You played Paper!"
  end

  get '/scissors' do 
    "You played Scissors!"
  end
  


  run! if app_file == $0

end 
