require 'sinatra/base'

class Rps_challenge < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/new_game'
  end

  get '/new_game' do
    @name = session[:name]
    erb :new_game
  end

  post '/result' do
    session[:player_choice] = params[:rps]
    session[:computer_choice] = 'scissor'
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    @winner = session[:name]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
