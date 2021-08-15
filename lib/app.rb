require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    session[:choice] = nil
    erb(:index)
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @name = session[:name]
    @choice = session[:choice]
    @computer = session[:computer]
    erb(:play)
  end

  post "/rock" do
    session[:choice] = "Rock"
    session[:computer] = ["Rock", "Paper", "Scissors"].sample
    redirect "/play"
  end

  post "/paper" do
    session[:choice] = "Paper"
    session[:computer] = ["Rock", "Paper", "Scissors"].sample
    redirect "/play"
  end

  post "/scissors" do
    session[:choice] = "Scissors"
    session[:computer] = ["Rock", "Paper", "Scissors"].sample
    redirect "/play"
  end
end
