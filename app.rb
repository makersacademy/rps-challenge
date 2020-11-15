require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/bot'
require './helpers/rps_helper'

class RPSApp < Sinatra::Base
  enable :sessions
  helpers RPSHelper

  get '/' do
    erb(:index)
  end

  post '/names' do
    params[:player_2_name].empty? ? single_player : multi_player
  end

  get '/play' do
    erb :play
  end

  get '/play_mp' do
    erb :playmp
  end

  post '/fight' do
    @round = $game.single_match(params[:player_1_move])
    @computer_move = $game.computer_move
    erb :outcome
  end

  post '/fight_mp' do
    @round = $game.mp_match(params[:player_1_move], params[:player_2_move])
    erb :outcomemp
  end
  run! if app_file == $0
end
