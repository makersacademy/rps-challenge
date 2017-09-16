require "sinatra/base"

class Rps < Sinatra::Base
  enable :sessions

  # get "/" do
  #   "testing infrastructure working!"
  # end

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player_1_name] = params[:player_1_name]
    # @player_2_name = "Computer"
    session[:player_2_name] = "Computer"
    redirect "/play"
  end

  get "/play" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end



  # get '/attack' do
  #   "Hello World"
  # end


  run! if app_file == $0


end
