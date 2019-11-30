require "sinatra/base"
require_relative "./lib/computer"
require_relative "./lib/game"
require_relative "./lib/player"

class RockPaperScissors < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/play" do
    player = Player.new(params[:player_name])
    computer = Computer.new
    game = Game.create(player, computer)
    redirect "/play"
  end

  get "/play" do
    @game = Game.instance
    erb :play
  end

  post "/choose" do
    @game = Game.instance
    @game.update_player_choice(params[:player_choice])
    redirect "/choose"
  end

  get "/choose" do
    @game = Game.instance
    erb @game.result
  end

  run! if app_file == $0
end
