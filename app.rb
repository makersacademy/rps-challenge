require "sinatra/base"
require "./lib/player.rb"
require "./lib/game.rb"

class RPS < Sinatra::Base
  enable:sessions

  get "/" do
    erb :index
  end

  post "/play" do
    player1 = Player.new(params[:player_name])
    $game = Game.new(player1)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    @player = @game.player1
    erb :play
  end

  post "/rock" do
    @game = $game
    @player = @game.player1
    @player.weapon_choice("Rock")
    redirect "/play"
  end

  post "/paper" do
    @game = $game
    @player = @game.player1
    @player.weapon_choice("Paper")
    redirect "/play"
  end

  post "/scissors" do
    @game = $game
    @player = @game.player1
    @player.weapon_choice("Scissors")
    redirect "/play"
  end

  run! if app_file == $0
end
