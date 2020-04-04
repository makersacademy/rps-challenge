require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions
  set :session_secret, 'spooky secret'

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
    p @game.winner
    p @game.winner.name
    erb :result
  end
end
