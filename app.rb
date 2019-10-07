require 'sinatra'
require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/winner'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  get '/single_player' do
    erb(:single_player)
  end

  post '/single_player' do
    player1 = Player.new(params[:name1])
    computer = Computer.new
    player2 = Player.new(computer.name)
    player2.move = computer.move
    Game.create(player1, player2)
    redirect '/single_player_move'
  end

  get '/single_player_move' do
    players = Game.players
    @player1_name = players.first.name
    @player2_name = players.last.name
    erb(:single_player_move)
  end

  post '/multiplayer' do
    player1 = Player.new(params[:name1])
    player2 = Player.new(params[:name2])
    Game.create(player1, player2)
    redirect '/multiplayer_first_move'
  end

  get '/multiplayer_first_move' do
    players = Game.players
    @player1_name = players.first.name
    @player2_name = players.last.name
    erb(:multiplayer_first_move)
  end

  post '/multiplayer_first_move' do
    players = Game.players
    players.first.move = params["move1"]
    redirect '/multiplayer_second_move'
  end

  get '/multiplayer_second_move' do
    players = Game.players
    @player1_name = players.first.name
    @player2_name = players.last.name
    erb(:multiplayer_second_move)
  end

  post '/result' do
    players = Game.players
    players.first.move = params["move1"] if players.first.move.nil?
    players.last.move = params["move2"] if players.last.move.nil?
    redirect '/result'
  end

  get '/result' do
    players = Game.players
    @player1_name = players.first.name
    @player2_name = players.last.name
    @player1_move = players.first.move
    @player2_move = players.last.move
    @winner = Winner.new(players).determine
    erb(:result)
  end

  run! if app_file == $0
end
