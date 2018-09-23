require 'sinatra/base'
require './lib/moves'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:name]), Player.new('Computer'))
    session[:moves] = Moves.new
    p session
    redirect '/play'
  end

  get '/play' do
    p session
    @game = session[:game]
    erb :play
  end

  post '/rock' do
    session[:user_move] = params[:user_move]
    session[:game].player.user_move(session[:user_move])
    session[:game].computer.user_move(session[:moves].comp_move)
    p session
    redirect '/winner'
  end

  post '/paper' do
    session[:user_move] = params[:user_move]
    session[:game].player.user_move(session[:user_move])
    session[:game].computer.user_move(session[:moves].comp_move)
    p session
    redirect '/winner'
  end

  post '/scissors' do
    session[:user_move] = params[:user_move]
    session[:game].player.user_move(session[:user_move])
    session[:game].computer.user_move(session[:moves].comp_move)
    p session
    redirect '/winner'
  end

  get '/winner' do
    @game = session[:game]
    erb :winner
  end


  run! if app_file == $0
end
