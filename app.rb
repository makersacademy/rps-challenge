require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/enter_name' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/play' do
    @player_move = params[:player_move]
    game = Game.new(@player_move)
    erb :game_result
  end

  run! if app_file == $0
end
