require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    @player_1_name = session[:player_1_name]
    redirect '/ready'
  end

  get '/ready' do
    @player_1_name = session[:player_1_name]
    @weapon = session[:weapon]
    erb :ready
  end

  run if app_file == $0
end
