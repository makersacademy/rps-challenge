require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/computer.rb"

class RPS < Sinatra::Base
  enable:sessions

  get "/" do
    erb :index
  end

  post "/play" do
    player1 = Player.new(params[:player_name])
    player2 = Computer.new
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    @player1 = @game.player1
    @player2 = @game.player2
    @result = @game.result 
    erb :play
  end

  post "/rock" do
    @game = $game
    @player1 = @game.player1
    @player1.weapon_choice("Rock")
    redirect "/play"
  end

  post "/paper" do
    @game = $game
    @player1 = @game.player1
    @player1.weapon_choice("Paper")
    redirect "/play"
  end

  post "/scissors" do
    @game = $game
    @player1 = @game.player1
    @player1.weapon_choice("Scissors")
    redirect "/play"
  end

  run! if app_file == $0
end
