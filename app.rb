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
    redirect "/results"
  end

  get "/results" do
    @rps = $rps
    erb :solo_results
  end

  # get "/multiplayer-game" do
  #   erb :multiplayer_names
  # end


  


  run! if app_file == $0
end