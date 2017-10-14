require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/artificial_player'
require_relative './lib/rps_game'

class Rps < Sinatra::Base

  before do
    @game = RpsGame.current_game
  end

  get "/" do
    erb(:index)
  end

  get "/single_player" do 
    redirect "/multiplayer" if params[:game_type] == "Human VS Human"
    erb(:single_player)
  end

  get "/multiplayer" do
    erb(:multiplayer)
  end

  post "/set_players_single" do
    player1 = Player.new(params[:players_name])
    bot = ArtificialPlayer.new
    @game = RpsGame.create_game(player1, bot)
    redirect "/play"
  end

  post "/set_players_multiplayer" do
    p player1 = Player.new(params[:players1_name])
    p player2 = Player.new(params[:players2_name])
    @game = RpsGame.create_game(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @name = @game.player1.name
    erb(:play)
  end

  post "/results" do
    @game.player1_chooses(params[:rps_choice])
    @game.player2_chooses(params[:rps_choice]) 
    @results = @game.decide_winner
    
    erb(:results)
  end

  post "/game_over" do
    redirect '/play' if params[:redirect_to] == "Play Again"
    erb(:game_over)
  end 

end