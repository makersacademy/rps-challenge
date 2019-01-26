require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:name]
    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]
    erb :game
  end

  post '/play' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @computer_choice = ['rock', 'paper', 'scissors'].sample
    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end