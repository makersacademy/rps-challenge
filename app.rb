require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

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

  post '/weapon' do
    session[:weapon] = params[:weapon] 
    redirect '/fight'
  end

  get '/fight' do
    @weapon = session[:weapon]
    erb :fight
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
