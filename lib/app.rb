require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'computer'

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
    @computer = Computer.new.choose
    erb(:play)
  end

  post "/rock" do
    session[:choice] = "Rock"
    redirect "/play"
  end

  post "/paper" do
    session[:choice] = "Paper"
    redirect "/play"
  end

  post "/scissors" do
    session[:choice] = "Scissors"
    redirect "/play"
  end
end
