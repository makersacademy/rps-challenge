require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/round"

class Game < Sinatra::Base
  get "/" do
    erb:index
  end

  post "/names" do
    player = Player.new(params[:player_name])
    $round = Round.new(player)
    redirect "/play"
  end

  get "/play" do
    @player_name = $round.player.name
    erb:play
  end

  run! if app_file == $0
end
