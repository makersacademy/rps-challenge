require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = Player.new(params[:player1_name])
    @player2 = Player.new(['Dave Mustaine', 'Nick Menza', 'Marty Friedman', 'David Ellefson'].sample)
    session[:player1] = @player1
    session[:player2] = @player2
    erb :play
  end

  get '/result' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1.make_move(params[:player1_move])
    @player2.make_move(['ROCK', 'PAPER', 'SCISSORS'].sample)
    w = Game.new.result(@player1.move, @player2.move)
    @winner = @player1.name if w == 1
    @winner = @player2.name if w == 2
    @winner = 'A DRAW!' if w == 0
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
