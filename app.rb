require "sinatra/base"

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player_1_name] = params[:player_1_name]
    redirect "/play"
  end

  get "/play" do
    @player_1_name = session[:player_1_name]
    erb :play
  end
  get "/play_move" do
    erb :moves
  end
  post "/move" do
    session[:move] = params[:move]
    @move = session[:move]
  end

  run! if app_file == $0
end
