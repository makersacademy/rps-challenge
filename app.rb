require "sinatra/base"
require "./lib/player"
require "./lib/game"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  get "/" do
    erb :index
  end

  post "/name" do
    player_1 = Player.new(params[:player_name])
    player_2 = Player.new
    Game.create(player_1, player_2)
    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    erb :play
  end

  post "/weapons" do
    Game.instance.player_1.play_weapon(params[:options])
    Game.instance.computer_weapon
    redirect "/outcome"
  end

  get "/outcome" do
    @game = Game.instance
    erb :outcome
  end
end
