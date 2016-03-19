require "sinatra/base"
require "./lib/player"

class RPS < Sinatra::Base

  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player] = params[:player]
    redirect "/play"
  end

  get "/play" do
    @player = session[:player]
    erb :play
  end

  run! if app_file == $0
end
