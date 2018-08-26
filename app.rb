require "sinatra/base"
require "./lib/player"

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  post "/result" do
  @player_move = params[:player_move]
  erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
