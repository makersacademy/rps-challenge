require "sinatra/base"
require "./lib/player"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  get "/" do
    erb :index
  end

  post "/name" do
    $player = Player.new(params[:player_name])
    redirect "/play"
  end

  get "/play" do
    @player_name = $player.name
    erb :play
  end
end
