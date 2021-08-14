require 'sinatra'
require 'sinatra/reloader' if test?
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  include Game
  enable :sessions

  configure :test do 
    register Sinatra::Reloader
  end

  get '/' do
    session[:winner] = nil

    erb :welcome
  end

  get '/play' do
    @player = session[:player]
    @player_move = session[:player_move]
    @robot_move = session[:robot_move]
    @winner = session[:winner]
 
    erb :play
  end

  post '/create-player' do
    session[:player] = params[:player]

    redirect '/play'
  end

  post '/move' do
    session[:player_move] = params[:move]
    session[:robot_move] = Game.random_move
    session[:result] = true

    parse = { -1 => session[:player], 1 => 'Robot', 0 => 'Nobody' }
    result = Game.judge(session[:player_move], session[:robot_move])

    session[:winner] = parse[result]

    redirect '/play'
  end

  run! if app_file == $0
end
