# my_app.rb
require 'sinatra/base'
require './lib/computer.rb'
require './lib/player.rb'

class MyApp < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/game" do
    session[:name] = params[:name]
    redirect to('/playgame')
  end

  get "/playgame" do
    @@name = Player.new(session[:name]).playername
    @@computer = Computer.new.result
    erb(:playgame)
  end

  post "/playagain" do
    redirect to('/playgame')
  end

  post "/rock" do
    erb(:rock)
  end

  post "/paper" do
    erb(:paper)
  end

  post "/scissors" do
    erb(:scissors)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
