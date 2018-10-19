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
    session['name'] = params[:name]
    @name = session['name']
    erb(:game)
  end

  post '/game/rock' do
    @user_move = "rock"
    game = Game.new(['rock', 'paper', 'scissors'])
    winner = Winner.new
    @game_move = game.move
    @winner = winner.determine(game.move, @user_move)
    erb(:win_or_lose)
  end

  post '/game/paper' do
    @user_move = "paper"
    game = Game.new(['rock', 'paper', 'scissors'])
    winner = Winner.new
    @game_move = game.move
    @winner = winner.determine(game.move, @user_move)
    erb(:win_or_lose)
  end

  post '/game/scissors' do
    @user_move = "scissors"
    game = Game.new(['rock', 'paper', 'scissors'])
    winner = Winner.new
    @game_move = game.move
    @winner = winner.determine(game.move, @user_move)
    erb(:win_or_lose)
  end

  run! if app_file == $0
end
