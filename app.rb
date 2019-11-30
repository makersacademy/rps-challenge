require "sinatra/base"
require_relative "./lib/computer"
require_relative "./lib/player"
require_relative "./lib/game"

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

  post "/result" do
    @game = Game.instance
    @game.update_player_choice(params[:player_choice])
    redirect "/result"
  end

  get "/result" do
    @game = Game.instance
    erb :result
  end

  run! if app_file == $0
end
