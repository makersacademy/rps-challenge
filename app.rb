require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'
require './lib/game'


class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/send-names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect "/get-player1-move"
  end

  before do
    @game = Game.instance
  end

  get '/get-player1-move' do
    @player_1_name = @game.player1.name
    @player_2_name = @game.player2.name
    erb :get_player1_move
  end

  post '/send-player1-move' do
    @game.player1.make_move(params[:move])
    redirect '/get-player2-move'
  end

  get '/get-player2-move' do
    @player_1_name = @game.player1.name
    @player_2_name = @game.player2.name
    erb :get_player2_move
  end

  post'/send-player2-move' do
    @game.player2.make_move(params[:move])
    redirect '/game-result'
  end

  get '/game-result' do
    @player_2_move = @game.player2.move
    @player_1_move = @game.player1.move
    @result = @game.result
    erb :game_result
  end
end
