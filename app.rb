require "sinatra/base"
require_relative 'lib/computer'
require_relative 'lib/game'
require_relative "lib/player"

class Rps < Sinatra::Base

  before do
    @game = Game
  end

  get "/" do
    erb :index
  end

  post "/begin" do
    player1 = Player.new(params[:name])
    player2 = Player.new
    @game = Game.create(player1, player2)
    redirect "/choose"
  end

  get "/choose" do
    erb :choose
  end

  post "/picked" do
    player_choice = params[:choice]
    @game.player1.choose(player_choice)
    @game.player2.choose
    redirect "/index"
  end

  get "/game_page" do
    erb :game_page
  end

  run! if app_file == $0

end
