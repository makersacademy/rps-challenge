require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @name = session[:name]
    p "printing the value of human name"
    p @name
    erb :play
  end

  post "/game" do
    @name = session[:name]
    session[:move] = params[:move]
    @move = session[:move]
    @marketeer = Player.new(@name, @move)
    redirect "/game"
  end

  get "/game" do
    @name = session[:name]
    @move = session[:move]
    erb :game
  end

  run! if app_file == $0
end
