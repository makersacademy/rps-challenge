require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session['player1'] = params[:player1]
    session['player2'] = params[:player2]
    redirect '/startgame'
  end

  get '/startgame' do
    @player1 = session['player1']
    @player2 = session['player2']
    erb(:startgame)
  end

  get '/play1' do
    @player1 = session['player1']
    erb(:play1)
  end

  post '/move1' do
    session['player1move'] = params[:player1move]
    redirect '/play2'
  end

  get '/play2' do
    @player2 = session['player2']
    erb(:play2)
  end

  post '/move2' do
    session['player2move'] = params[:player2move]
    redirect '/results'
  end

  get '/results' do
    @player1 = session['player1']
    @player2 = session['player2']
    @player1move = session['player1move']
    @player2move = session['player2move']
    @game = Game.new(@player1, @player2)
    @winner = @game.winner(@player1move, @player2move)
    erb(:results)
  end

  run! if app_file == $0
end
