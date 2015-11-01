require 'sinatra/base'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    p session[:player]
    redirect :play
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/user_vs_pc' do
    session[:rps] = params[:rps]
    redirect :game
  end

  get '/game' do
    @user_value = session[:rps]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
