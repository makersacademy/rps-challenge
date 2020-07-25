require "sinatra/base"
require "./lib/player"

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    redirect('/play')
  end

  get "/play" do
    @player_1_name = $player_1.name
    erb :play
  end

  get "/rock" do
    @player_1_name = $player_1.name
    erb :rock
  end

  get "/paper" do
    @player_1_name = $player_1.name
    erb :paper
  end

  get "/scissors" do
    @player_1_name = $player_1.name
    erb :scissors
  end

  run! if app_file == $0
end
