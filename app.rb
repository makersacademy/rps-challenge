require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/computer"
require_relative "./lib/game"

class RockPaperScissors < Sinatra::Base

  $player = Player.new
  $computer = Computer.new
  $game = Game.new(player: $player, computer: $computer)

  get "/" do
    erb :root
  end

  get "/play" do
    $player.name = params[:player_name]
    params[:computer_name] = $computer.name
    erb :play
  end

  get "/result" do
    $player.shape = params[:choice]
    params[:computer_choice] = $computer.shape
    params[:game] = $game
    erb :result
  end

end
