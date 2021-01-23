require 'sinatra/base'
require_relative "game"
require_relative "player"

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/new_player" do
    Game.create(Player.new(params["name"]))
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/choice" do
    @game.players[0].make_choice(params.key(""))
    redirect "/results"
  end

  get "/results" do
    erb :results
  end

  run! if app_file == $0
end
