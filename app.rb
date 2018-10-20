require 'sinatra'
require 'sinatra/base'
require_relative './lib/players'
require_relative './lib/winner'
require_relative './lib/computer'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/two_player' do
    erb(:two_player)
  end

  post '/one_player' do
    erb(:one_player)
  end

  post '/single_player_names' do
    session['name1'] = params[:name1]
    @name1 = session['name1']
    computer = Computer.create(['rock', 'paper', 'scissors'])
    @name2 = computer.name2
    @players = Players.create(@name1, @name2)
    @players.move2 = computer.move2
    redirect '/single_player_game'
  end

  get '/single_player_game' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    @players.move1 = params["move1"]
    erb(:single_player_game)
  end

  post '/multiplayer_names' do
    session['name1'] = params[:name1]
    session['name2'] = params[:name2]
    @name1 = session['name1']
    @name2 = session['name2']
    @players = Players.create(@name1, @name2)
    redirect '/multiplayer_game'
  end

  get '/multiplayer_game' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    erb(:multiplayer_game)
  end

  post '/game2names' do
    @players = Players.instance
    @players.move1 = params["move1"]
    redirect '/multiplayer_game2'
  end

  get '/multiplayer_game2' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    erb(:multiplayer_game2)
  end

  post '/game/determine' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    @move1 = @players.move1
    @players.move1 = params["move1"] if @players.move1.nil?
    @players.move2 = params["move2"] if @players.move2.nil?
    @move2 = @players.move2
    p @move2
    redirect '/game/result'
  end

  get '/game/result' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    @move1 = @players.move1
    @move2 = @players.move2
    @winner = Winner.new(@players)
    @determine_winner = @winner.determine
    erb(:result)
  end

  run! if app_file == $0
end
