require "sinatra/base"
require "./lib/game.rb"
require "./lib/player.rb"

class Rpsgame < Sinatra::Base

  enable :sessions

  before { @game = Game.instance }

  get "/" do
    erb(:index)
  end

  post "/hold" do
    @player_1 = params[:player_1]
    @player_2 = Player.new
    @game = Game.create(@player_1, @player_2)
    erb :hold
  end

  post "/game" do
    erb :game
  end

  run! if app_file == $0
end
