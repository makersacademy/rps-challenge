require 'sinatra/base'
require './lib/computer_opponent'


class Rps_challenge < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/register' do
      erb :register
  end

  post '/register' do
    session[:user] = params[:user_name]
    @user = session[:user]
    redirect '/game'
  end

  get '/game' do
    @user = session[:user]
    erb :game
  end

  post '/outcome' do
    @comp = ComputerOpponent.new
    @shape = params[:choice]
    @comp.shape
    @computer_choice = @comp.outcome(@shape.to_sym)
    erb :outcome
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
