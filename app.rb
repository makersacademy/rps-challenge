require 'sinatra/base'
require 'erb'
require_relative './lib/player.rb'
require_relative './lib/game.rb'


 # set :session_secret, 'super secret'

class Rps < Sinatra::Base

  attr_reader :player_name

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/game-setup' do
    p $game = Game.new
    p $player = Player.new(params[:player1])
    $player_score = $game.player_score
    $player_name = $player.name.to_s.capitalize
    $player2_score = $game.computer_score
    erb(:oneplayer)
  end

  get '/move' do
    p @player1_move = $player.play(params[:move])
    p @player2_move = $game.computer_move

    p $winner = $game.winner(@player1_move, @player2_move)
    p $player_score = $game.player_score
    p $player2_score = $game.computer_score

   redirect '/std-game'
  end

  get '/std-game' do
    @player1_score = $player_score
    @player2_score = $player2_score
    @player_name = $player.name.to_s.capitalize
    @winner = $winner
    erb(:oneplayer)
  end

end #class end
