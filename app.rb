require "sinatra"
require "./lib/player"
require "./lib/computer"
require "./lib/game"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/play" do
   $player = Player.new(params[:name])
   $computer = Computer.new
   $game = Game.new($player, $computer)
   redirect "/play"
  end

  get "/play" do
   erb(:play)
  end

  post "/result" do
    $computer.choose
    $player.choose(params)
    $game.who_wins
    redirect "/result"
  end

  get "/result" do
    erb(:result)
end

  run! if app_file == $0
end
