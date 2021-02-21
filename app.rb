require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/random_pick'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'secret'
  set :public_folder, 'public'

  MESSAGE = {win: "You Won!", lose: "You Lost!", draw: "It's a draw!"}

  get '/' do
    erb :index
  end

  post '/game' do
    session[:game] = Game.new(params[:name])
    redirect '/game'
  end

  get '/game' do
    @name = session[:game].player1.name
    erb :game
  end

  get '/result' do
    @player1 = session[:game].player1.name
    @player2 = session[:game].player2.name
    @score1 = session[:game].score1
    @score2 = session[:game].score2
    @pick1 = session[:game].pick1
    @pick2 = session[:game].pick2    
    @result = MESSAGE[session[:game].result]

    erb :result
  end

  post '/rock' do
    session[:game].turn('Rock')
    redirect '/result'
  end

  post '/paper' do
    session[:game].turn('Paper')
    redirect '/result'
  end

  post '/scissors' do
    session[:game].turn('Scissors')
    redirect '/result'
  end

  run! if app_file == $0
end
