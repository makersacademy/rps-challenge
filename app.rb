require 'sinatra'
require 'sinatra/base'
require_relative './lib/turn'
require_relative './lib/winner'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/game' do
    session['name1'] = params[:name1]
    session['name2'] = params[:name2]
    @name1 = session['name1']
    @name2 = session['name2']
    @turn = Turn.create(@name1, @name2)
    erb(:game)
  end

  post '/game2' do
    @turn = Turn.instance
    erb(:game2)
  end

  post '/game/move' do
    @name1 = session['name1']
    @name2 = session['name2']
    @user_move1 = params["move"]
    @turn = Turn.new(@name1, @name2)
    @turn.move
    @user_move2 = params["move"]
    winner = Winner.new
    @winner = winner.determine(@user_move1, @user_move2)
    erb(:win_or_lose)
  end

  run! if app_file == $0
end
