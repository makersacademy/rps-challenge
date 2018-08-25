require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/enter_name' do
    @game = Game.create(params[:player_name])
    @player_name = @game.player_name
    erb :play
  end

  post '/play' do
    @game = Game.instance
    @game.player_move_set(params[:player_move])
    @player_name = @game.player_name
    @player_move = @game.player_move
    erb :game_result
  end

  run! if app_file == $0
end
