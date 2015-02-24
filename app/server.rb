require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/player'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new         { File.join(root, "..", "views")  }
  set :public_folder, Proc.new { File.join(root, '..', "public") }

  enable :sessions

  game = Game.new
  player = Player.new
  computer = Player.new
  game.add(player)
  game.add(computer)

  get('/') do
    erb :index
  end

  get('/enter_name') do
    erb :enter_name
  end

  post('/play') do
    player.name_player(params[:player_name].capitalize.to_s)
    @player = game.player1
    @choices = game.results.keys
    erb :play_game
  end

  get('/take_turn') do
    @choices = game.results.keys
    player.choose(params[:choice].to_sym)
    game.generate_choice
    @game_choice = game.player2.choice
    @message = game.play
    @player = game.player1
    erb :play_game
  end

end