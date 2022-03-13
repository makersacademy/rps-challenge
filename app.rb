require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/rock_paper_scissors'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  get "/solo-game" do
    erb :solo_name
  end

  post "/solo-game-name" do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new("Computer")
    $rps = RPS.new(player1, player2)
    redirect "/solo-game-choice"
  end

  get "/solo-game-choice" do
    @rps = $rps
    erb :solo_game_choice
  end

  post "/solo-choice" do
    @rps = $rps
    @rps.player1.pick(params[:selection])
    @rps.random_choice
    @rps.check_winner_or_draw
    redirect "/solo-results"
  end

  get "/solo-results" do
    @rps = $rps
    erb :solo_results
  end

  get "/multiplayer-game" do
    erb :multiplayer_game_names
  end

  post "/multiplayer-game-names" do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $multiplayer_game = RPS.new(player1, player2)
    redirect "/player1-choice"
  end

  get "/player1-choice" do
    @game = $multiplayer_game
    erb :player1_choice
  end

  post "/player1" do
    @game = $multiplayer_game
    @game.player1.pick(params[:selection])
    redirect "/player2-choice"
  end

  get "/player2-choice" do
    @game = $multiplayer_game
    erb :player2_choice
  end

  post "/player2" do
    @game = $multiplayer_game
    p @game
    @game.player2.pick(params[:selection])
    redirect "/multiplayer-results"
  end

  get "/multiplayer-results" do
    @game = $multiplayer_game
    @game.check_winner_or_draw
    erb :multiplayer_results
  end


  run! if app_file == $0
end