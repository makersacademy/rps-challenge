require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class App < Sinatra::Base

  enable :sessions

  set :session_secret, 'key'

  get '/' do
    session[:player1move] = nil
    session[:player2move] = nil
    session[:message] = 'Awaiting your first move...'
    erb :index
  end

  get '/play' do
    @game = Game.show
    @confirmation = session[:message]
    erb :play
  end

  get '/multi_login' do
    erb :multi_login
  end

  post '/multi_login' do
    Game.store(Game.new([Player.new(params[:player1]), Player.new(params[:player2])]))
    redirect '/multiplayer'
  end

  get '/multiplayer' do
    @game = Game.show
    @confirmation = session[:message]
    erb :multiplayer
  end

  post '/multimove' do
    session[:message] = Game.show.play([params[:player1], params[:player2]])
    redirect '/multiplayer'
  end

  post '/login' do
    Game.store(Game.new([Player.new(params[:player])]))
    redirect '/play'
  end

  post '/move' do
    session[:message] = Game.show.play([params[:choice]])
    redirect '/play'
  end

  post '/reset' do
    Game.show.reset
    if Game.show.players.length == 1
      redirect '/play'
    else
      redirect '/multiplayer'
    end
  end

  run! if app_file == $0

end
