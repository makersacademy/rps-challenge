require "sinatra/base"
require "./lib/player"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  get "/" do
    erb :index
  end

  post "/name" do
    $player_1 = Player.new(params[:player_name])
    $player_2 = Player.new
    redirect "/play"
  end

  get "/play" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end

  get "/outcome" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :outcome
  end
end
