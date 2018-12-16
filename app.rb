require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class Rpsgame < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get "/" do
    erb(:index)
  end

  post "/hold" do
    @player_1 = params[:player_1]
    @player_2 = Player.new("computer", "rock")
    @game = Game.create(@player_1, @player_2)
    erb :hold
  end

  # to whoever reviews this - for some reason my code falls over here when
  # I load it in rackup - NoMethodError at /game
  # I'd appreciate any feedback on how to fix this please :)

  post "/game" do
    erb :game
  end

  run! if app_file == $0
end
