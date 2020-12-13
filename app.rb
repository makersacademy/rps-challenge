require "sinatra/base"
require "./lib/game"


class Rps < Sinatra::Base

  get "/" do
    erb(:index)
  end

  get "/game" do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    $game = Game.new(@player_1, @player_2)
    @game = $game
    erb(:game)
  end

  get "/play_again" do
    @game = $game
    erb(:game)
  end

  get "/score" do
    @player_1_move = params[:move_player_1]
    @player_2_move = params[:move_player_2]
    @game = $game
    @game.play_a_match(@player_1_move, @player_2_move)
    erb(:score)
  end
  
  get "/reset" do
    @game = $game
    @game.reset
    erb(:game)
  end

  

  run! if app_file == $0
end
