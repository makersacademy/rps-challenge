require 'sinatra/base'
require './lib/game'
require './helpers/turn_helper'

class RockPaperScissors < Sinatra::Base

  helpers TurnHelper

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @current_player = @game.current_player.name
    erb :play
  end

  post '/play' do
    turn_redirect(@game)
  end

  get '/results' do
    @player_1_name = @game.player_1.name
    @player_2_name = @game.player_2.name
    @winner = @game.results.winner
    @player_1_choice = @game.player_1.choice
    @player_2_choice = @game.player_2.choice
    erb :results
  end

  post '/newgame' do
    @game.reset
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME
end
