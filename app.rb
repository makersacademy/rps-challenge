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
    @game.player_choice(params[:choice])
    redirect to '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
