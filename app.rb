require 'bundler/setup'
require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  set :views          , File.expand_path('../lib/views', __FILE__)
  set :public_folder, File.dirname(__FILE__)

  @@player
  @@computer
  @@game

  get ('/') do
    erb(:index)
  end

  post('/name') do
    new_game(params[:player_name])
    # @@game = Game.new
    # @@player = Player.new(params[:player_name])
    # @@computer = Computer.new
    redirect '/play'
  end

  get ('/play') do
    @player_score = @@game.player_score
    @computer_score = @@game.computer_score
    @player_name = @@player.name
    erb(:play)
  end

  # get ('/test') do
  #   @player_move = params[:player_choice]
  #   @computer_move = @@computer.play_hand(params[:computer_choice])
  #   @@game.check_round_winner(@player_move, @computer_move)
  #   erb(:test)
  # end

  post ('/in-game') do
    @player_move = @@player.play_hand(params[:game_options])
    @computer_move = @@computer.play_hand
    @@game.check_round_winner(@player_move, @computer_move)
    redirect '/end-game' if end_game?(@@game)
    redirect '/play'
  end

  get ('/end-game') do
    @winner = @@game.winner
    erb(:end_game)
  end

  # get ('/in-game') do
  #   @player_score = @@game.player_score
  #   @computer_score = @@game.computer_score
  #   end_game?(@@game) ? erb(:end_game) : erb(:in_game)
  # end

  private

  def new_game(player_name)
    @@game = Game.new
    @@player = Player.new(player_name)
    @@computer = Computer.new
  end

  def end_game?(game)
    game.end_game? ? true : false
  end

end
