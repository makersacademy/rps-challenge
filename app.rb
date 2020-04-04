require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    @game = Game.create(params[:name])
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @game.player.choose(params[:choice])
    @game.decide_winner
    redirect '/result'
  end
  
  get '/result' do
    erb :result
  end
end
