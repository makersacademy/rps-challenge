require "sinatra"
require "./lib/player"
require "./lib/engine"
require "./lib/game.rb"

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get "/" do
    erb(:home)
  end

  post "/play-game" do
    @game = Game.create(Player.new(params[:name]), Engine.new)
    redirect "/game"
  end

  get "/game" do
   @player_name = @game.player.name
   erb(:game)
  end

  post "/rps" do
    @game.play(params[:player_move])
    @game.won(@game.player, @game.engine)
    redirect "/end_game"
  end

  get "/end_game" do
    erb(:end_game)
  end

  run if app_file == $0
end
