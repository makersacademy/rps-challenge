require 'sinatra'
require 'sinatra/base'
require_relative './lib/game'
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
    erb(:game)
  end

  post '/game/move' do
    @user_move = params["move"]
    # game = Game.new(['rock', 'paper', 'scissors'])
    
    winner = Winner.new
    @game_move = game.move
    @winner = winner.determine(game.move, @user_move)
    erb(:win_or_lose)
  end

  run! if app_file == $0
end
