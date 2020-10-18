require 'sinatra/base'
require_relative 'lib/comp_opponent'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player1] = Player.new(params[:Player1])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player1].name
    session[:move] = params[:move]
    erb(:play)
  end

  post '/move' do
    @player1 = session[:Player1].name
    session[:move] = Player.new(params[:Player1]).player_move(params[:move])
    redirect '/result'
  end

  get '/result' do
    @player1 = session[:Player1].name
    @move = session[:move]
    @comp_move = CompOpponent.new.comp_move
    @result = Game.new(@move, @comp_move).result
    erb(:result)
  end

  get '/again' do
    redirect '/play'
  end
 
  run! if app_file == $0
end
