require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPSGame < Sinatra::Base

  before do

  end

  get "/" do
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1_name])
    Game.new(player_1)
    redirect "/play"
  end

  get "/play" do
    erb :play
  end

  post "/rock" do
    Game.play(:rock)
    redirect "/win"
  end

  post "/paper" do
    Game.play(:paper)
    redirect "/win"
  end

  post "/scissors" do
    Game.play(:scissors)
    redirect "/win"
  end

  get "/win" do
    "You win!"
  end
end
