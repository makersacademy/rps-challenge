require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    "Welcome to Rock, Paper, Scissors!"
    erb :index
  end

  post "/names" do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get "/play" do
    @game = $game
    erb :play
  end

  post "/choice" do
    @game = $game
    @game.player.selection(params[:choice])
    @game.computer.selection
    redirect '/result'
  end

  get "/result" do
    @game = $game
    erb(:result)
  end

  run! if app_file == $0
end
