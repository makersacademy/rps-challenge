require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  include Game
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :welcome
  end

  get '/play' do
    @player = session[:player]
    @player_move = session[:player_move]
    @winner = session[:winner]

    session[:winner] = nil
 
    erb :play
  end

  post '/create-player' do
    session[:player] = params[:player]

    redirect '/play'
  end

  post '/move' do
    session[:player_move] = params[:move]
    session[:robot_move] = Game.random_move
    result = Game.judge(session[:player_move], session[:robot_move])

    if result == -1
      session[:winner] = session[:player]
    elsif result == 1
      session[:winner] = "Robot"
    else
      session[:winner] = "Nobody"
    end

    redirect '/play'
  end

  run! if app_file == $0
end
