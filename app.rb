require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/round"

class Game < Sinatra::Base
  get "/" do
    erb:index
  end

  get "/single_player" do
    erb:single_player
  end

  get "/multi_player" do
    erb:multi_player
  end

  post "/name" do
    player1 = Player.new(params[:player1_name])
    Round.create_instance(player1)
    redirect "/play_single"
  end

  post "/names" do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    Round.create_instance(player1, player2)
    redirect "/play_multi1"
  end

  get "/play_single" do
    Round.instance.reset_choices
    @player1_name = Round.instance.player1.name
    erb:play_single
  end

  post "/choice" do
    Round.instance.player1.add_choice(params[:choice])
    redirect "/result"
  end

  get "/play_multi1" do
    Round.instance.reset_choices
    @player1_name = Round.instance.player1.name
    erb:play_multi1
  end

  post "/choice1" do
    Round.instance.player1.add_choice(params[:choice1])
    redirect "/play_multi2"
  end

  get "/play_multi2" do
    @player2_name = Round.instance.player2.name
    erb:play_multi2
  end

  post "/choice2" do
    Round.instance.player2.add_choice(params[:choice2])
    redirect "/result"
  end

  get "/result" do
    @result = Round.instance.result
    @p1_name = Round.instance.player1.name
    @p2_name = Round.instance.player2.name
    @p1_choice = Round.instance.player1.choice
    @p2_choice = Round.instance.player2.choice
    @p1_wins = Round.instance.player1.win_count
    @p2_wins = Round.instance.player2.win_count
    erb:result
  end

  run! if app_file == $0
end
