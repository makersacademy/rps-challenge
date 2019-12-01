require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post "/register" do
    @player = Player.new(params[:player_name])
    @player_name = @player.name
    erb :game
  end

  post "/play-rock" do
    @player_choice = "ROCK"
    erb :play
  end

  post "/play-paper" do
    @player_choice = "PAPER"
    erb :play
  end

  post "/play-scissors" do
    @player_choice = "SCISSORS"
    erb :play
  end

  run! if app_file == $0

end
