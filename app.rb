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
    @move = session[:move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
