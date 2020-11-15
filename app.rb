require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @game = Game.new(player1=Human.new(session[:player_name]), player2=Computer.new)
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/move' do
    session[:player_move] = params[:player_move]
    redirect '/play' if !@game.game_over?
    redirect '/result'
  end

  get '/result' do

  end
  run! if app_file == $0
end
