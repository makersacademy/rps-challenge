require "sinatra"
require "./lib/player"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/play" do
   $player = Player.new(params[:name])
   redirect "/play"
  end

  get "/play" do
   @player_name = $player.name
   erb(:play)
  end

  post "/result" do
    $player.choose(params)
    redirect "/result"
  end

  get "/result" do
    $computer = Computer.new
    @comp_choice = $computer.choice
    @choice = $player.choice
    erb(:result)
end

  run! if app_file == $0
end
