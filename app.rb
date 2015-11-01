require 'sinatra/base'
require './lib/game'
require './lib/opponent'
require './lib/result'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Opponent, Result)
    session['name1'] = params['name1']
    redirect('/rps')
  end

  get '/rps' do
    @player_name = session['name1']
    erb :rps
  end

  post '/select_hand' do
    $game.set_player_1_hand(params['player_1_hand'].to_sym)
    session['player_2_hand'] = $game.set_opponent_hand
    redirect('/showdown')
  end

  get '/showdown' do
    @player_1_hand = $game.player_1_hand
    @player_2_hand = session['player_2_hand']
    # p "player 1 hand: #{@player_1_hand}"
    # p "player 2 hand: #{@player_2_hand}"
    # p "game.opponent #{$game.opponent}"
    # p "game.player_1_hand #{$game.player_1_hand}"
    # p "game.player_2_hand #{$game.opponent_hand}"
    @result = $game.result.to_s.gsub("_"," ")
    # @result = @result.to_s.gsub("_"," ")
    erb :showdown
  end

  post '/rps' do
    redirect '/rps'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
