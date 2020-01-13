require 'sinatra/base'
require './lib/game'
require './lib/player'


class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player = Player.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    erb :play
  end

  post  '/move' do
    @game = Game.create(params[:move])
    redirect '/chosen_move'
  end

  get '/chosen_move' do
    @game = Game.instance
    erb :move
  end


run! if app_file == $0
end
