require "sinatra"
require "sinatra/base"

set :session_secret, "supersecret"

# require lib files

class RPS < Sinatra::Base

  enable :sessions
  set :public_folder, File.dirname(__FILE__) + "/static"

  get "/" do
    erb(:index)
  end

  post "/startgame" do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    p session[:player_name]
    @player_name = session[:player_name]
    erb(:play)
  end

  post "/move" do
    @player_move = session[:player_move]
    # process computer's move
    redirect "/winner"
  end

  get "/winner" do
    erb(:winner)
  end

  # start the server only if the ruby file is executed directly
  run! if app_file == $0
end
