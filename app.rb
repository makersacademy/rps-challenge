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

  post '/player_choice' do
    session[:weapon] = params[:weapon].downcase
    redirect '/weapon'
  end

  get '/weapon' do
    @player_name = session[:player_name]
    @weapon = session[:weapon]
    erb :weapon
  end

  run! if app_file == $0
end
