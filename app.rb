require  "sinatra/base"
require "./lib/computer.rb"


class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb (:index)
  end

  post "/play" do
    @name = params[:name]
    erb (:play)
  end

  post "/compare" do
    session[:choice] = params[:choice]
    redirect "/win"
  end

  get "/win" do
    @user_choice = session[:choice]
    erb (:win)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
