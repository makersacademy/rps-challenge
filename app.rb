require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/names' do
    @game = Game.create(params[:player1])
    redirect to '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.set_player_choice(params[:choice].to_sym)
    @game.set_auto_choice
    @game.decide_winner
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
