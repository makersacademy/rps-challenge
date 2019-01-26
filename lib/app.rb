require 'sinatra/base'
require 'sinatra'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_one_name] = params["player_one_name"]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    @player_one_weapon = session[:weapon]
    erb :play
  end

  post '/play' do
    session[:weapon] = params["weapon"]
    redirect '/play'
  end

  run! if app_file == $0

end
