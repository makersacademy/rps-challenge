require "sinatra/base"
require_relative "./game"

class RPS < Sinatra::Base
  before do
    @game = Game.instance
    @name = @game.name if !@game.nil?
  end

  get "/" do
    erb :index
  end

  post "/game/start" do
    @name = params["name"]
    @game = Game.create(@name)
    erb :game
  end

  get "/game" do
    @name = @game.name
    @choice = params["choice"]
    erb :game
  end
end
