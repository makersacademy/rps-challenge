require "sinatra/base"
require "./lib/selections"

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, "super secret"

  get "/" do
    "Let's play Rock, Paper, Scissors!"
    erb(:index)
  end

  post "/register" do
    session[:name] = params[:name]
    redirect("/play")
  end

  get "/play" do
    @name = session[:name]
    @player_choice = session[:choice]
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
    @result = Selections.new(@player_choice, @computer_choice)
    erb(:play)
  end

  post "/play" do
    session[:choice] = params[:choice]
    redirect("/play")
  end

  run! if app_file == $0

end