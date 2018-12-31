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
    @name1 = params[:name1]
    @player1 = Player.new(@name1)
    computer = Computer.new
    @player2 = Player.new(computer.name)
    @players = Player.all
    @players.last.move = computer.move
    redirect '/single_player/move'
  end

  get '/single_player/move' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    @players.first.move = params["move1"]
    erb(:single_player_move)
  end

  post '/multiplayer' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    @player1 = Player.new(@name1)
    @player2 = Player.new(@name2)
    redirect '/multiplayer/first_move'
  end

  get '/multiplayer/first_move' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    erb(:multiplayer_first_move)
  end

  post '/multiplayer/first_move' do
    @players = Player.all
    @players.first.move = params["move1"]
    redirect '/multiplayer/second_move'
  end

  get '/multiplayer/second_move' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    erb(:multiplayer_second_move)
  end

  post '/result' do
    @players = Player.all
    @players.first.move = params["move1"] if @players.first.move.nil?
    @players.last.move = params["move2"] if @players.last.move.nil?
    redirect '/result'
  end

  get '/result' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    @move1 = @players.first.move
    @move2 = @players.last.move
    @winner = Winner.new(@players)
    @determine_winner = @winner.determine
    erb(:result)
  end

  run! if app_file == $0
end
