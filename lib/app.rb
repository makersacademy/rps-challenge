require 'sinatra/base'
require_relative "game"
require_relative "player"
require_relative "playerbot"

class RockPaperScissors < Sinatra::Base
  configure do
    set :public_dir, "public"
  end

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
    @game.players[1].make_choice
    redirect "/results"
  end

  get "/results" do
    @game.gather_results
    erb :results
  end

  run! if app_file == $0
end
