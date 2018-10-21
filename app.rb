require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    session[:move] = params[:move]
    erb(:play)
  end

  post '/attack' do
    @move = session[:move]
    game = $game.move(@move, $game.comp_move)
    session[:result] = $game.store(game)
    redirect '/result'
  end

  get '/result' do
    @end_game = session[:result]
    erb(:result)
  end

  run! if app_file == $0
end
