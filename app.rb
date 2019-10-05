require "sinatra"
require "sinatra/base"

set :session_secret, "supersecret"

# require lib files

class RPS < Sinatra::Base

  enable :sessions
  set :public_folder, File.dirname(__FILE__) + "/static"

  get "/" do
    @content = erb(:index)
    erb(:template)
  end

  post "/startgame" do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player_name]
    @content = erb(:play)
    erb(:template)
  end

  post "/move" do
    @player_move = session[:player_move]
    # process computer's move
    redirect "/winner"
  end

  get "/winner" do
    @content = erb(:winner)
    erb(:template)
  end

  # start the server only if the ruby file is executed directly
  run! if app_file == $0
end
