require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player-attack' do
    session[:player_attack] = params[:player_attack]
    redirect '/game_over'
  end

  get '/game_over' do
    game = Game.new(session[:player_1_name], session[:player_attack])
    @game_over = game.play
    @computer_move = game.computer_move
    erb :game_over
  end

  run! if app_file == $0

end
