require 'sinatra/base'
require './lib/opponent'
require './lib/result'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/choose_rps' do
    @player_name = params[:player_name]
    erb :choose_rps
  end

  post '/play_game' do
    @player_weapon = params[:player_weapon]
    opponent = Opponent.new
    opponent.player_weapon(@player_weapon)
    @opponent_move = opponent.choose_random_move
    @who_wins = opponent.who_wins
    erb :play_game
  end
end
