require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base 
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/home'
  end

  get '/home' do
    erb(:home)
  end

  post '/game' do
    session[:player_1_move] = params[:player_1_move]
    redirect '/result'
  end

  get '/result' do
    game = Game.new(session[:player_1_name], session[:player_1_move])
    @result = game.round
    @computer_move = game.computer_move
    erb(:result)
  end

  run! if app_file == $0
end
