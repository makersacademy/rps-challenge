require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]),Computer.new)
    redirect '/game'
  end

  get '/game' do
    @player_1 = $game.player_1
    erb(:game)
  end

  post '/choice' do
    $game.player_1.update_choice(params[:choice])
    $game.player_2.update_choice
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  run! if app_file == $0
end
