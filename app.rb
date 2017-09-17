require "sinatra/base"
require "./lib/game"
require "./lib/computer"


class Rps < Sinatra::Base
  enable :sessions


  get "/" do
    $test_computer = Computer.new
    $test_computer.choice
    $test_game = Game.new
    # $test_game.result
    $test_game.result(@weapon, @computer_choice)
    erb :index
  end

  post "/outcome" do
    computer = Computer.new
    computer.choice
    game = Game.new
    game.result
    # game.result(weapon = @weapon, computer_choice = @computer_choice)
    erb :outcome
    # redirect "/play"
  end

  post "/names" do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = "Computer"
    redirect "/play"
  end

  get "/play" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  post "/play" do
    computer = Computer.new
    game = Game.new
    session[:weapon] = params[:weapon]
    session[:computer_choice] = computer.choice
    session[:game_result] = game.result(@weapon, @computer_choice)
    redirect "/outcome"
  end

  get "/outcome" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @weapon = session[:weapon]
    @computer_choice = session[:computer_choice]
    @game_result = session[:game_result]
    erb :outcome
  end


  run! if app_file == $0


end
