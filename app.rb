require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/single-player' do
    @game = Game.create(player_1_name: params[:name])
    redirect '/single-player'
  end

  get '/single-player' do
    erb :play
  end

  post '/single-player-result' do
    @game.player_1.choose(params[:player_1_choice])
    @game.decide_winner
    redirect '/result'
  end

  post '/multi-player' do
    @game = Game.create(player_1_name: params[:player_1_name], player_2_name: params[:player_2_name])
    redirect '/multi-player'
  end

  get '/multi-player' do
    erb :play
  end

  post '/player-1' do
    @game.player_1.choose(params[:player_1_choice])
    redirect '/multi-player'
  end

  post '/multi-player-result' do
    @game.player_2.choose(params[:player_2_choice])
    @game.decide_winner
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
end
