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
    Computer.create_instance
    Compare.create_instance
    @name = params[:name]
    erb (:play)
  end

  post "/compare" do
    @computer.choose
    @result = Compare.instance.result(params[:user_choice], @computer.choice)
    session[:user_choice] = params[:user_choice]
    session[:result] = @result.to_sym
    redirect "/result"
  end

  get "/result" do
    @user_choice = session[:user_choice]
    erb (session[:result])
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
