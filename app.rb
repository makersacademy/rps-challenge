require 'sinatra/base'
require 'shotgun'

class Rps < Sinatra::Base
  enable :sessions
  set :session_secret, "this is a secret...."

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/game' do
    @player = session[:player]
    @choice = params[:choice]
    erb :game
  end
end
