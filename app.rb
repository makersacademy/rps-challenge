require "sinatra"
require "./lib/player.rb"

class RPS < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/players" do
    $player = Player.new(params[:player_one])
    #session[:player_two] = params[:player_two]
    redirect "/play"
  end

  get "/play" do
    @player_one = $player
    #@player_two = session[:player_two]
    erb :play
  end

  post "/rps" do
    $player.store_move(params[:player_choice])
    redirect "/game_over"
  end

  get "/game_over" do
    "this is being tested"
  end

  run! if app_file == $0
end
