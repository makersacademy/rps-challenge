# RPS

require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:name] = params[:name] # stores name sent in form in a session
    redirect "/play"
  end

  get "/play" do
    @name = session[:name]
    @choice = session[:choice]
    @computer_choice = session[:computer]
    erb :play
  end

  post "/play" do
    session[:choice] = params[:choice] # stores our choice (R, P or S)
    session[:computer] = :rock
    redirect "/play"
  end


  # start the server if ruby file executed directly
    run! if app_file == $0
  end
