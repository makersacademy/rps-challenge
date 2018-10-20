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

  post '/twoplayer' do
    erb(:twoplayer)
  end

  post '/oneplayer' do
    erb(:oneplayer)
  end

  post '/gamenames1' do
    session['name1'] = params[:name1]
    @name1 = session['name1']
    computer = Computer.create(['rock', 'paper', 'scissors'])
    @name2 = computer.name2
    @players = Players.create(@name1, @name2)
    redirect '/game1'
  end

  get '/game1' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    @players.move1 = params["move1"]
    erb(:game1)
  end

  post '/gamenames' do
    session['name1'] = params[:name1]
    session['name2'] = params[:name2]
    @name1 = session['name1']
    @name2 = session['name2']
    @players = Players.create(@name1, @name2)
    redirect '/game'
  end

  get '/game' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    erb(:game)
  end

  post '/game2names' do
    @players = Players.instance
    @players.move1 = params["move1"]
    redirect '/game2'
  end

  get '/game2' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    erb(:game2)
  end

  post '/game/determine' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    @move1 = @players.move1
    @players.move1 = params["move1"] if @players.move1.nil?
    @players.move2 = params["move2"]
    @move2 = @players.move2
    winner = Winner.create(@players)
    redirect '/game/move'
  end

  get '/game/move' do
    @players = Players.instance
    @name1 = @players.name1
    @name2 = @players.name2
    @move1 = @players.move1
    @move2 = @players.move2
    @winner = Winner.instance
    @determine_winner = @winner.determine
    erb(:win_or_lose)
  end

  run! if app_file == $0
end
