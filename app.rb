require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post "/name" do
    session[:marketeer] = params[:marketeer]
    redirect "/play"
  end

  get "/play" do
    @marketeer = session[:marketeer]
    erb :play
  end

  post "/game" do
    session[:move] = params[:move]
    redirect "/game"
  end

  get "/game" do
    @marketeer = session[:marketeer]
    @move = session[:move]
    erb :game
  end

  run! if app_file == $0
end
