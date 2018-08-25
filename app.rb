require "sinatra/base"
require "./lib/game"
require "./lib/player"

class RockPaperScissors < Sinatra::Base
  
  before do
    @game = Game.instance
  end

  get "/" do
    erb :index
  end

  post "/begin" do
    player01 = Player.new(params[:name])
    player02 = Player.new
    @game = Game.create(player01, player02)
    redirect "/choose"
  end

  get "/choose" do
    erb :choose
  end

  post "/picked" do
    player_choice = params[:choice]
    @game.player01.choose(player_choice)
    @game.player02.choose
    redirect "/battle"
  end

  get "/battle" do
    erb :battle
  end

  run! if app_file == $0

end
