require "sinatra/base"
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/names" do
    $player_2 = Player.new(params[:player_2_name])
    @player_2_name = $player_2.name
    @player_1_name = $player_1.name
    redirect('/play_multiplayer')
  end

  get "/play_multiplayer" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play_multiplayer
  end

  get "/choose_opponent" do
    $player_1 = Player.new(params[:player_1_name])
    @player_1_name = $player_1.name
    erb :choose_opponent
  end

  get "/play_singleplayer" do
    $computer = Player.new("Computer")
    @computer_name = $computer.name
    @player_1_name = $player_1.name
    erb :play_singleplayer
  end

  get "/rock_computer" do
    @player_1_name = $player_1.name
    @computer_name = $computer.name
    @game = Game.new
    @computer_move = @game.random_selection
    erb :rock_computer
  end

  get "/paper_computer" do
    @player_1_name = $player_1.name
    @computer_name = $computer.name
    @game = Game.new
    @computer_move = @game.random_selection
    erb :paper_computer
  end

  get "/scissors_computer" do
    @player_1_name = $player_1.name
    @computer_name = $computer.name
    @game = Game.new
    @computer_move = @game.random_selection
    erb :scissors_computer
  end

  run! if app_file == $0
end
