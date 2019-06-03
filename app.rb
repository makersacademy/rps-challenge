require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    player_1 = Player.new(params['player_1'])
    player_2 = Player.new(params['player_2'])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get "/play" do
    @game = $game
    erb(:play)
  end

  get "/player_1_move" do
    @game = $game
    erb(:player_1_move)
  end

  post "/player_1_moved" do
    @game = $game
    @game.assign(@game.player_1, params['player_1_move'])
    redirect '/player_2_move'
  end

  get "/player_2_move" do
    @game = $game
    erb(:player_2_move)
  end

  post "/player_2_moved" do
    @game = $game
    @game.assign(@game.player_2, params['player_2_move'])
    redirect '/result'
  end

  get "/result" do
    @game = $game
    erb(:result)
  end
end
