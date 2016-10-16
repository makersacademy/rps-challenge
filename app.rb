require  "sinatra/base"
require "./lib/computer.rb"
require "./lib/compare.rb"

class RPS < Sinatra::Base
  enable :sessions

  before do
    @computer = Computer.instance
  end

  get "/" do
    erb (:index)
  end

  post "/play" do
    @name = params[:name]
    erb (:play)
  end

  post "/compare" do
    Computer.create_instance.choose
    Compare.create_instance
    @result = Compare.instance.result(params[:user_choice], Computer.instance.choice)
    session[:user_choice] = params[:user_choice]
    redirect "/win" if @result == "win"
    redirect "/lose" if @result == "lose"
    redirect "/draw" if @result == "draw"
  end

  get "/win" do
    @user_choice = session[:user_choice]
    erb (:win)
  end

  get "/draw" do
    @user_choice = session[:user_choice]
    erb (:draw)
  end

  get "/lose" do
    @user_choice = session[:user_choice]
    erb (:lose)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
