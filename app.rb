require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class Rpsgame < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/hold" do
    @player_1 = params[:player_1]
    @player_2 = Player.new("computer", "")
    @game = Game.create(@player_1, @player_2)
    erb(:hold)
  end

  post "/game" do
    erb(:game)
  end

  run! if app_file == $0
end
