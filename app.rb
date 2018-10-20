require 'sinatra'
require 'sinatra/base'
require_relative './lib/players'
require_relative './lib/winner'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
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
