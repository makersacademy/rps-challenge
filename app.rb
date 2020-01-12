require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/shoot' do
    session[:action] = params[:action]
    redirect '/turn'
  end

  get '/turn' do
    @action = session[:action]
    erb :turn
  end

  run! if app_file == $0
end