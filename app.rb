require "sinatra/base"
require "./lib/player"
require "./lib/game"

class Rps < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    redirect "/play"
  end

  get "/play" do
    @player_1_name = $player_1.name
    erb :play
  end

  post "/choice" do
    $choice = $player_1.choose(params[:choice])
    redirect "/game"
  end

  get "/game" do
    @player_1_name = $player_1.name
    @choice = $choice
    game = Game.new(@choice)
    @computer_move = game.computer_move
    @winner = game.play
    erb :game
  end
end
