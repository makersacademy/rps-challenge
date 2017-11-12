require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/round"

class Game < Sinatra::Base
  get "/" do
    erb:index
  end

  post "/names" do
    player1 = Player.new(params[:player_name])
    $round = Round.new(player1)
    redirect "/play"
  end

  get "/play" do
    @player_name = $round.player1.name
    erb:play
  end

  post "/choice" do
    $round.player1.add_choice(params[:choice])
    redirect "/result"
  end

  get "/result" do
    @result = $round.result
    @p1_name = $round.player1.name
    @p2_name = $round.player2.name
    @p1_choice = $round.player1.choice
    @p2_choice = $round.player2.choice
    erb:result
  end

  run! if app_file == $0
end
