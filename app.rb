require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPSgame < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @name = session[:name]
    @choice = session[:choice]
    erb :play
  end

  post "/play" do
    session[:choice] = params[:choice]
    redirect "/play"
  end
end
