require 'sinatra/base'
require './lib/computer'
require './lib/game'

class RPSapp < Sinatra::Base

  enable :sessions

  get '/' do
    'Testing'
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @p1_name = session[:player_1_name]
    erb :play
  end

  post '/go' do
    session[:player_1_move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @p1_name = session[:player_1_name]
    @p1_move = session[:player_1_move]
    @cp_move = Computer.go
    @result = Game.result(@p1_name, @p1_move)
    erb :result
  end

  run! if app_file == $0

end
