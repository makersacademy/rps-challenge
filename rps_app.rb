require 'sinatra'
require 'game'
require 'player'

class RockPaperScissors < Sinatra::Base
  attr_reader :player
  enable :sessions

  get '/' do
    erb :main_page
  end

  post '/register-names' do
    $player = Player.new(params[:player])
    redirect '/registered-players'
  end

  get '/registered-players' do
    @player = $player.player_name
    erb :registered_page
  end

  get '/game' do
    game = Game.new($player)
    $player.players_move("rock")
    game.workout_winner($player.move, "scissors")
    @winner = game.winner
    @loser = game.loser
    erb :game
  end

  get '/draw' do
    game = Game.new($player)
    @player = $player.player_name
    $player.players_move("rock")
    game.workout_winner($player.move, "rock")
    erb :draw
  end

end
