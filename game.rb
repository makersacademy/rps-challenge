require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb :play
  end

  post '/play' do
    session[:choice] =params[:choice]
    redirect :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
