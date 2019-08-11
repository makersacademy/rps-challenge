require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    "This is Rock, Paper, Scissors!"
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect :play
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  post "/play" do
    @choice = params[:choice]
    erb :game
  end

  run! if app_file == $0
end
