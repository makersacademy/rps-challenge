require 'sinatra'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    erb(:play)
  end

  post '/selection' do
    session[:selection] = params[:selection]
    computer_choice = ["ROCK","PAPER","SCISSORS"].sample
    
    # redirect 'win if'
    # redirect ''
  end

end
