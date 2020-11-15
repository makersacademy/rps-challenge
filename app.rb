require 'sinatra/base'
require_relative './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    session[:player_1_move] = params[:player_1_move]
    erb :move
  end

  get '/fight' do
    game = Game.new(session[:player_1_name], session[:player_1_move])
    @round = game.result
    @comp_move = game.computer_move
    erb :outcome
  end
  run! if app_file == $0
end
