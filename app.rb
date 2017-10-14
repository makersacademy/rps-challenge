require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/artificial_player'
require_relative './lib/rps_game'

class Rps < Sinatra::Base

  before do
    @game = RpsGame.current_game
  end

  get "/" do
    erb(:header) + erb(:index) + erb(:footer)
  end

  get "/choose_game" do
    p params[:game_type]
    redirect params[:game_type] == "Human VS Human" ? '/multiplayer' : '/single_player'
    # redirect '/single_player' if params[:game_type] == "Human VS Computer"
  end

  get "/single_player" do 
    erb(:header) + erb(:single_player) + erb(:footer)
  end

  get "/multiplayer" do
    erb(:header) + erb(:multiplayer) + erb(:footer)
  end

  post "/set_players_single" do
    player1 = Player.new(params[:players_name])
    bot = ArtificialPlayer.new
    @game = RpsGame.create_game(player1, bot)
    redirect "/play", 307
  end

  post "/set_players_multiplayer" do
    p player1 = Player.new(params[:players1_name])
    p player2 = Player.new(params[:players2_name])
    @game = RpsGame.create_game(player1, player2)
    redirect "/play", 307
  end

  post "/play" do
    @name = @game.players[@game.round % 2].name 
    @game.increase_round_counter
    erb(:header) + erb(:play) + erb(:footer)
  end

  post "/save_choice" do
    @game.players[@game.round % 2 - 1].chooses(params[:rps_choice])
    redirect "#{@game.multiplayer_link}", 307
  end

  post "/results" do
    unless @game.multiplayer?
      @game.player1_chooses(params[:rps_choice])
      @game.player2_chooses(params[:rps_choice]) 
    end
    @results = @game.decide_winner
    erb(:header) + erb(:results) + erb(:footer)
  end

  post "/game_over" do
    @game.reset_round_counter
    redirect '/play', 307 if params[:redirect_to] == "Play Again"
    erb(:header) + erb(:game_over) + erb(:footer)
  end 
end
