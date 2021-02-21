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

  post '/type' do
    session[:name] = params[:name]
    redirect '/type'
  end

  get '/type' do
    @name = session[:name]
    erb :type
  end

  post '/rps' do
    session[:game] = Game.new(session[:name], 'RPS')
    redirect '/game'
   end

  post '/rpsls' do
    session[:game] = Game.new(session[:name], 'RPSLS')
    redirect '/game'
   end

  get '/game' do
    @game = session[:game].type
    erb :game
  end

  get '/result' do
    @player1, @player2, @pick1, @pick2, @score1, @score2 = session[:game].stats.values
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

  post '/lizard' do
    session[:game].turn('Lizard')
    redirect '/result'
  end

  post '/spock' do
    session[:game].turn('Spock')
    redirect '/result'
  end

  run! if app_file == $0
end
