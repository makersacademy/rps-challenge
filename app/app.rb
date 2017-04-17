require 'sinatra/base'
require './lib/game'
require './lib/opponent'
require './lib/result'
require './lib/history'
require './lib/patternmatcher'
require './lib/frequencyanalyzer'

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
    $game.store_hands
    $game.store_result
    redirect('/showdown')
  end

  get '/showdown' do
    @player_1_hand = $game.player_1_hand
    @player_2_hand = session['player_2_hand']
    @result = symbol_to_string($game.result)
    @result_history = $game.result_history
    erb :showdown
  end

  def symbol_to_string(result)
    result.to_s.tr("_"," ")
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
