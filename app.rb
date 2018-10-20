require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    $game.move(params[:player], $game.comp_move)
    erb(:attack)
  end

  run! if app_file == $0
end
