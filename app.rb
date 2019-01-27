require 'sinatra/base'
require './lib/computer'
require './lib/game'

class RPSapp < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    'Testing'
    erb :index
  end

  post '/names' do
    player_1 = params[:player_1_name]
    player_2 = params[:player_2_name] == "" ? "Computer" : params[:player_2_name]
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
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
