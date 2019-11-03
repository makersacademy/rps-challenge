require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/forms' do
    @version = params[:version]
    erb(:nameforms)
  end

  post '/names' do
    session['player1'] = params[:player1]
    params[:player2].nil? ? session['player2'] = "The Computer" : session['player2'] = params[:player2]
    redirect '/startgame'
  end

  get '/startgame' do
    session['player1move'] = nil
    session['player2move'] = nil
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
    if session['player2'] == "The Computer"
      redirect '/results'
    else
      redirect '/play2'
    end
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
    @game = Game.new(@player1, @player2)
    @player1move = session['player1move']
    session['player2move'].nil? ? @player2move = @game.computer_move : @player2move = session['player2move']
    @winner = @game.winner(@player1move, @player2move)
    erb(:results)
  end

  run! if app_file == $0
end
