require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/welcome'
  end

  get '/welcome' do
    @name = session[:player_name]
    session[:choice] = params[:choice]
    erb :welcome
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:opponent_choice] = :paper
    redirect '/play'
  end

  get '/play' do
    @player_choice = session[:choice]
    @opponent_choice = session[:opponent_choice] = :paper
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
