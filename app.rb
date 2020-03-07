# RPS

require "sinatra/base"
require "./lib/turn"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name] # stores name sent in form in a session
    redirect "/play"
  end

  get "/play" do
    @turn = Turn.new(session)

    # @player_name = session[:player_name]
    # @player_choice = session[:player_choice]
    # @computer_choice = session[:computer_choice]
    erb :play
  end

  post "/play" do
    session[:player_choice] = params[:player_choice] # stores our choice (R, P or S)
    session[:computer_choice] = Computer.new.choice
    redirect "/play"
  end


  # start the server if ruby file executed directly
    run! if app_file == $0
  end
