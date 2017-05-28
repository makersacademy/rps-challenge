require 'sinatra/base'
require 'player'
require 'opponent'
require 'game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/player_name' do
    $game = Game.new(Player.new(params[:player_name]), Opponent.new)
    redirect '/play_rps'
  end

  get '/play_rps' do
    erb :play_rps
  end

  post '/compare_weapon' do
    $game.opponent.make_weapon_choice
    $game.player.make_weapon_choice(params[:weapon_choice])
    redirect '/bout_result'
  end

  get '/bout_result' do
    erb :bout_result
  end

run! if app_file == $0
end
