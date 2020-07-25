require "sinatra/base"
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base

  get "/" do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post "/choose_opponent" do
    player_1 = Player.new(params[:player_1_name])
    erb :choose_opponent
  end

  get "/names" do
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect('/play_multiplayer')
  end

  get "/play_multiplayer" do
    erb :play_multiplayer
  end


  get "/play_singleplayer" do
    player_2 = Player.new("Computer")
    @game = Game.create(player_1, player_2)
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
