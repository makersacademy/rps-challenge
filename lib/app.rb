require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'computer'
require_relative 'game'

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
    @winner = Game.new(@choice, @computer).calculate_winner
    erb(:play)
  end

  post "/choice" do
    session[:choice] = params[:choice]
    redirect "/play"
  end
end
