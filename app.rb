require "sinatra"
require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions
  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_1_name] = params[:player_1]
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player_1_name]
    erb :play
  end

  get "/player1_move" do
    "Player1 made a choice"
  end
  run! if app_file == $0
end
