require "sinatra"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class Rps < Sinatra::Base

  get "/" do
    erb(:index)
  end

  post "/name" do
    human = Player.new(params[:human])
    computer = Player.new("computer")
    @game = Game.create(human, computer)
    redirect("/play")
  end

  get "/play" do
    @game = Game.instance
    @human_name = @game.human.name
    @computer_name = @game.computer.name
    erb(:play)
  end

  run! if app_file == $0
end