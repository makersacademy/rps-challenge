require "sinatra/base"
require_relative "./game"
require_relative "./player"

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/choice" do
    p "Hello!"
    player1 = Player.new(params[:name_1], params[:choice_1])
    player2 = Player.new()
    @game = Game.create(player1, player2)
    if params[:opponent] == "human"
      redirect "/get-opponent"
    else
      redirect "/result"
    end
  end

  get "/get-opponent" do
    erb :opponent
  end

  post "/add-enemy" do
    player2 = Player.new(params[:name_2], params[:choice_2])
    @game.add_player(player2)
    redirect "/result"
  end

  get "/result" do
    erb :result
  end
end
