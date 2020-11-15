require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base 
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/home'
  end

  get '/home' do
    erb(:home)
  end

  post '/game' do
    session[:player_1_move] = params[:player_1_move]
    redirect '/result' if session[:player_2_name] == "Computer"
    redirect '/home2'
  end

  get '/home2' do
    erb(:home2)
  end

  post '/game2' do
    session[:player_2_move] = params[:player_2_move]
    redirect '/result'
  end

  get '/result' do
    player_1 = Player.new(session[:player_1_name], session[:player_1_move])
    player_2 = session[:player_2_name] == "Computer" ? Player.new(session[:player_2_name]) : Player.new(session[:player_2_name], session[:player_2_move])
    @game = Game.new(player_1, player_2)
    @result = @game.round
    erb(:result)
  end

  run! if app_file == $0
end
