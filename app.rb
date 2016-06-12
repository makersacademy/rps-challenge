require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RPS < Sinatra::Base
  get "/" do
    erb(:index)
  end

  post "/start" do
    name = params[:username].capitalize
    Game.start(Player.new(name), Player.new)
    @player1 = Game.instance.player1
    @player2 = Game.instance.player2
    erb :start_layout, layout: :layout do
      erb :choice_form
    end
  end

  post "/play" do
    @player1 = Game.instance.player1
    @player2 = Game.instance.player2
    erb :start_layout, layout: :layout do
      erb :choice_form
    end
  end

  post "/result" do
    @player1 = Game.instance.player1
    @player1.make_choice(params[:choice])
    @player2 = Game.instance.player2
    @player2.make_choice
    @winner = Game.instance.play_round
    erb :continue_layout
  end
end
