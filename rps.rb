require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :login
  end

  post '/login' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  get '/choose' do
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
