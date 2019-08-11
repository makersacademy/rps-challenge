require 'sinatra/base'
#require 'Player'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :names
  end

  post '/names' do
    session[:Player_1] = params[:Player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player_1]
    @move = session[:move]
    @Opponent_move = session[:opponent_move]
    erb :play
  end

  post '/play' do
    p params
    session[:move] = params[:move]
    session[:opponent_move] = :rock
    redirect '/move'
  end

  get '/move' do
    p params
    @player1 = session[:Player_1]
    @move = session[:move]
    @Opponent_move = session[:opponent_move]
    erb :move
  end

  run! if app_file == $0
end
