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

  get "/choice" do
    player1 = Player.new(params[:name_1],params[:choice_1])
    player2 = Player.new()
    @game = Game.create(player1,player2)
    redirect "/result"
  end

  get "/result" do
    erb :result
  end
end
