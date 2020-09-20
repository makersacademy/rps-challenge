require "sinatra"
require "./lib/player.rb"
require "./lib/game.rb"
require "./lib/bot.rb"

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/players" do
    @game = Game.create(Player.new(params[:player_one]), Bot.new)
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/rps" do
    @game.play(params[:player_choice])
    redirect "/game_over"
  end

  get "/game_over" do
    erb :game_over
  end

  run! if app_file == $0
end
