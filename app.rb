require "sinatra/base"
# require "./lib/game"
# require "./lib/player"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_1_name] = params[:player_1_name]
    redirect "/start_game"
  end

  get "/start_game" do
    @player_1_name = session[:player_1_name]
    erb :start_game
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
