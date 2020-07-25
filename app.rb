require "sinatra/base"
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base

  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    redirect('/play')
  end

  get "/play" do
    @player_1_name = $player_1.name
    erb :play
  end

  get "/rock" do
    @player_1_name = $player_1.name
    @computer = Player.new("Computer")
    @game = Game.new
    @computer_move = @game.random_selection
    erb :rock
  end

  get "/paper" do
    @player_1_name = $player_1.name
    @computer = Player.new("Computer")
    @game = Game.new
    @computer_move = @game.random_selection
    erb :paper
  end

  get "/scissors" do
    @player_1_name = $player_1.name
    @computer = Player.new("Computer")
    @game = Game.new
    @computer_move = @game.random_selection
    erb :scissors
  end

  run! if app_file == $0
end
