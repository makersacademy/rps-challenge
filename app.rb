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
    redirect '/play'
  end

  post '/multi-player' do
    @game = Game.create(player_1_name: params[:player_1_name], player_2_name: params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player-1' do
    @game.player_1.choose(params[:player_choice])
    if @game.multiplayer? 
      redirect '/play' 
    else
      @game.decide_winner
      redirect '/result'
    end
  end

  post '/player-2' do
    @game.player_2.choose(params[:player_choice])
    @game.decide_winner
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
end
