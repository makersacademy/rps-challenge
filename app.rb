require 'sinatra/base'
require './lib/player'
require './lib/computer'
#require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    "Welcome to Rock, Paper, Scissors!"
    erb :index
  end

  post "/names" do
    $player = Player.new(params[:player_name])
    $computer = Computer.new
    redirect '/play'
  end

  get "/play" do
    @player = $player
    @computer = $computer
    erb :play
  end

  post "/choice" do
    @player.choice(params[:choice])
    @computer.selection
    redirect '/result'
  end

  get "/result" do
    
  end

  run! if app_file == $0
end
