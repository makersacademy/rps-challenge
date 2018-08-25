require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RockPaperScissors < Sinatra::Base
  
  get "/" do
    erb :index
  end

  post "/begin" do
    player_name = params[:name]
    $game = Game.new(Player.new(player_name), Player.new)
    redirect "/choose"
  end

  get "/choose" do
    @game = $game
    
    erb :choose
  end

  post "/picked" do
    player_choice = params[:choice]
    @game = $game
    @game.player01.choose(player_choice)
    @game.player02.choose
    redirect "/battle"
  end

  get "/battle" do
    @game = $game
    erb :battle
  end

  run! if app_file == $0

end
