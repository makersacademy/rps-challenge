require "sinatra/base"
require "./lib/game"
require "./lib/computer"


class Rps < Sinatra::Base
  enable :sessions

  # get "/" do
  #   "testing infrastructure working!"
  # end

  get "/" do
    $test_computer = Computer.new
    $test_computer.choice
    $test_game = Game.new
    $test_game.result(@weapon, @computer_choice)
    erb :index
  end


  # get "/outcome" do
  #   erb @game.result
  # end


  post "/outcome" do
    computer = Computer.new
    game = Game.new
    computer.choice
    game.result(weapon = @weapon, computer_choice = @computer_choice)
    erb :outcome
    # redirect "/play"
  end


  post "/names" do
    session[:player_1_name] = params[:player_1_name]
    # @player_2_name = "Computer"
    session[:player_2_name] = "Computer"
    redirect "/play"
  end

  # post "/names" do
  #   p params
  #   player_1_name = Player.new(params[:player_1_name])
  #   session[:player_2_name] = "Computer"
  #   redirect "/play"
  # end

  get "/play" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  post "/play" do
    computer = Computer.new
    session[:weapon] = params[:weapon]
    session[:computer_choice] = computer.choice
    redirect "/outcome"
  end


  get "/outcome" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @weapon = session[:weapon]
    @computer_choice = session[:computer_choice]
    # @computer_choice.choice
    erb :outcome
  end


  # def assign_player_choice(choice)
  #   choice = Choice.new
  #   choice.change_choice(choice)
  # end


  # get "/choice" do
  #   @player_1_name = session[:player_1_name]
  #   @choice_1 = "Rock"
  #   @choice_2 = "Paper"
  #   @choice_3 = "Scissors"
  #   erb :choice
  # end

  # get "/choice_2" do
  #   @player_1_name = session[:player_1_name]
  #   @choice_2 = "Paper"
  #   erb :choice
  # end
  #
  # get "/choice_3" do
  #   @player_1_name = session[:player_1_name]
  #   @choice_3 = "Scissors"
  #   erb :choice
  # end

  # get '/attack' do
  #   "Hello World"
  # end


  run! if app_file == $0


end
