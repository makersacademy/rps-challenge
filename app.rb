require  "sinatra/base"
require "./lib/computer.rb"


class RPS < Sinatra::Base
  enable :sessions

  before do
    @computer = Computer.instance
  end

  get "/" do
    Computer.create_instance
    erb (:index)
  end

  post "/play" do
    @name = params[:name]
    erb (:play)
  end

  post "/compare" do
    session[:user_choice] = params[:user_choice]
    redirect "/win"
  end

  get "/win" do
    @user_choice = session[:user_choice]
    erb (:win)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
