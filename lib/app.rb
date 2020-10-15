require "sinatra/base"
require_relative "./game"

class RPS < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/game/start" do
    game = Game.new(params["name"])
    @name = game.player_name
    erb :game
  end

  get "/game" do
    @name = game.player_name
    @choice_text = "You chose #{params["choice"]}." if !params["choice"].nil?
    erb :game
  end
end
