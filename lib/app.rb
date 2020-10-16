require "sinatra/base"
require_relative "./game"

class RPS < Sinatra::Base
  before do
    @game = Game.instance
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
    erb :game
  end

  get "/result" do
    @choice = params["choice"]
    @result = @game.play(@choice)
    erb :result
  end
end
