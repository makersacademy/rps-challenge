require 'sinatra'
require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/winner'
require_relative './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/two_player' do
    erb(:two_player)
  end

  get '/one_player' do
    erb(:one_player)
  end

  post '/single_player_names' do
    @name1 = params[:name1]
    @player1 = Player.new(@name1)
    computer = Computer.new
    @player2 = Player.new(computer.name)
    @players = Player.all
    @players.last.move = computer.move
    redirect '/single_player_game'
  end

  get '/single_player_game' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    @players.first.move = params["move1"]
    erb(:single_player_game)
  end

  post '/multiplayer_names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    @player1 = Player.new(@name1)
    @player2 = Player.new(@name2)
    redirect '/multiplayer_game'
  end

  get '/multiplayer_game' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    erb(:multiplayer_game)
  end

  post '/multiplayer_game' do
    @players = Player.all
    @players.first.move = params["move1"]
    redirect '/multiplayer_game2'
  end

  get '/multiplayer_game2' do
    @players = Player.all
    @name1 = @players.first.name
    @name2 = @players.last.name
    erb(:multiplayer_game2)
  end

  post '/game/determine' do
    @players = Player.all
    @players.first.move = params["move1"] if @players.first.move.nil?
    @players.last.move = params["move2"] if @players.last.move.nil?
    redirect '/game/result'
  end

  get '/game/result' do
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
