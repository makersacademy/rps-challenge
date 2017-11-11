require 'sinatra/base'
require_relative './lib/game'

class App < Sinatra::Base

  enable :sessions

  set :session_secret, 'key'

  get '/' do
    session[:player1move] = nil
    session[:player2move] = nil
    session[:message] = nil
    erb :index
  end

  get '/play' do
    @player = Game.show.players[0]
    @confirmation = session[:message]
    @wins = Game.show.wins
    erb :play
  end

  get '/multi_login' do
    erb :multi_login
  end

  post '/multi_login' do
    Game.store(Game.new([params[:player1], params[:player2]]))
    redirect '/multiplayer'
  end

  get '/multiplayer' do
    @player1name = Game.show.players[0]
    @player2name = Game.show.players[1]
    @player1move = session[:player1move]
    @player2move = session[:player2move]
    erb :multiplayer
  end

  post '/test' do
    session[:message] = Game.show.play([params[:player1], params[:player2]])
    redirect '/multiplayer'
  end

  post '/login' do
    Game.store(Game.new([params[:player]]))
    redirect '/play'
  end

  post '/move' do
    session[:message] = Game.show.play([params[:choice]])
    redirect '/play'
  end

  post '/reset' do
    Game.show.reset
    redirect '/play'
  end

  run! if app_file == $0

end
