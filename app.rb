require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/single-player' do
    @game = Game.create(player_1_name: params[:name])
    redirect '/single-player'
  end

  get '/single-player' do
    erb :play
  end

  post '/multi-player' do
    @game = Game.create(player_1_name: params[:player_1_name], player_2_name: params[:player_2_name])
    redirect '/multi-player'
  end

  get '/multi-player' do
    erb :play
  end

  post '/result' do
    @game.player_1.choose(params[:player_1_choice])
    @game.decide_winner
    redirect '/result'
  end
  
  get '/result' do
    erb :result
  end
end
