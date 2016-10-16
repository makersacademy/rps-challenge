require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/names' do
    @game = Game.create
    @game.set_players(params[:player1])
    redirect to '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player1.set_choice(params[:choice].to_sym)
    @game.computer.random_choice
    @game.set_choices
    @game.decide_winner
    redirect to '/result'
  end

  get '/result' do
    erb @game.result
  end

  run! if app_file == $0
end
