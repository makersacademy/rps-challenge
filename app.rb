require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/round"

class Game < Sinatra::Base
  get "/" do
    erb:index
  end

  post "/names" do
    player1 = Player.new(params[:player_name])
    Round.create_instance(player1)
    redirect "/play"
  end

  get "/play" do
    @player_name = Round.get_instance.player1.name
    erb:play
  end

  post "/choice" do
    Round.get_instance.player1.add_choice(params[:choice])
    redirect "/result"
  end

  get "/result" do
    @result = Round.get_instance.result
    @p1_name = Round.get_instance.player1.name
    @p2_name = Round.get_instance.player2.name
    @p1_choice = Round.get_instance.player1.choice
    @p2_choice = Round.get_instance.player2.choice
    erb:result
  end

  run! if app_file == $0
end
