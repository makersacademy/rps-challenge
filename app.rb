require 'sinatra'
require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/winner'
require_relative './lib/computer'

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
    redirect '/single_player/move'
  end

  get '/single_player/move' do
    players = Player.all
    @player1_name = players.first.name
    @player2_name = players.last.name
    erb(:single_player_move)
  end

  post '/multiplayer' do
    Player.new(params[:name1])
    Player.new(params[:name2])
    redirect '/multiplayer/first_move'
  end

  get '/multiplayer/first_move' do
    players = Player.all
    @player1_name = players.first.name
    @player2_name = players.last.name
    erb(:multiplayer_first_move)
  end

  post '/multiplayer/first_move' do
    players = Player.all
    players.first.move = params["move1"]
    redirect '/multiplayer/second_move'
  end

  get '/multiplayer/second_move' do
    players = Player.all
    @player1_name = players.first.name
    @player2_name = players.last.name
    erb(:multiplayer_second_move)
  end

  post '/result' do
    players = Player.all
    players.first.move = params["move1"] if players.first.move.nil?
    players.last.move = params["move2"] if players.last.move.nil?
    redirect '/result'
  end

  get '/result' do
    players = Player.all
    @player1_name = players.first.name
    @player2_name = players.last.name
    @player1_move = players.first.move
    @player2_move = players.last.move
    @winner = Winner.new(players).determine
    erb(:result)
  end

  run! if app_file == $0
end
