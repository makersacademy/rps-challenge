require 'sinatra/base'
require './lib/moves'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/1' do
    erb :index1
  end

  get '/2' do
    erb :index2
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:name]), Player.new('Computer'))
    session[:moves] = Moves.new
    p session
    redirect '/play'
  end

  post '/2names' do
    session[:game] = Game.new(Player.new(params[:name1]),
    Player.new(params[:name2]))
    p session
    redirect '/play2'
  end

  get '/play' do
    p session
    @game = session[:game]
    erb :play
  end

  get '/play2' do
    p session
    @game = session[:game]
    erb :play2
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

  get '/result' do
    session[:user_move] = params[:user_move]
    session[:comp_move] = params[:comp_move]
    session[:game].player.user_move(session[:user_move])
    session[:game].computer.user_move(session[:comp_move])
    @game = session[:game]
    p session
    erb :winner
  end

  run! if app_file == $0
end
