require "sinatra/base"
require "./lib/game"
require "./lib/player"
require "./lib/computer"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/start" do
    name = params[:username].capitalize
    session["game"] = Game.new(Player.new(name), Computer.new)

    @player1 = session["game"].player1
    @player2 = session["game"].player2

    erb :start_layout, layout: :layout do
      erb :choice_form
    end
  end

  post "/play" do
    @player1 = session["game"].player1
    @player2 = session["game"].player2

    erb :start_layout, layout: :layout do
      erb :choice_form
    end
  end

  post "/result" do
    @player1 = session["game"].player1
    @player1.make_choice(params[:choice])

    @player2 = session["game"].player2
    @player2.make_choice

    @winner = session["game"].play_round

    erb :continue_layout
  end
end
