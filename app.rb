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
    erb :play
  end

  post '/move' do
    session[:player_move] = params[:player_move]
    redirect '/result'
  end

  get '/result' do

  end
  run! if app_file == $0
end
