require "sinatra/base"
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  get "/choose_opponent" do
    player_1 = Player.new(params[:player_1_name])
    erb :choose_opponent
  end

  get "/names" do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect('/play_multiplayer')
  end

  get "/play_multiplayer" do
    @game = $game
    erb :play_multiplayer
  end


  get "/play_singleplayer" do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new("Computer")
    $game = Game.new(player_1, player_2)
    erb :play_singleplayer
  end

  get "/rock_computer" do
    @computer_move = @game.random_selection
    erb :rock_computer
  end

  get "/paper_computer" do
    @computer_move = @game.random_selection
    erb :paper_computer
  end

  get "/scissors_computer" do
    @computer_move = @game.random_selection
    erb :scissors_computer
  end

  run! if app_file == $0
end
