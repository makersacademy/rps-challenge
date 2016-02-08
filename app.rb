require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]
    redirect '/game'
  end

  get '/game' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    @rps_options = ["Rock, Paper, Scissors"]
    erb :game
  end

  post '/result' do
    session[:weapon] = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @player_one_name = session[:player_one_name]
    @player_two_name = session[:player_two_name]
    @weapon = session[:weapon]
    @computer_choice = ["Rock, Paper, Scissors"]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $end
end