require "sinatra/base"
require "./lib/computer"
require "./lib/game"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    "This is Rock, Paper, Scissors!"
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect :play
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  post "/play" do
    @choice = params[:choice]
    @computer = Computer.new
    @computer_choice = @computer.random_weapon
    @game = Game.new
    @outcome = @game.play(@choice, @computer_choice)
    erb :game
  end

  run! if app_file == $0
end
