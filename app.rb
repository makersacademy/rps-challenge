require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPSGame < Sinatra::Base

  before do
    @game = Game.game
  end

  get "/" do
    erb :index
  end

  post "/names" do
    player_1 = Player.new(params[:player_1_name])
    Game.new_game(player_1)
    redirect '/play'
  end

  get "/play" do
    erb :play
  end
end
