require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:Player1])
    redirect '/choose-weapon'
  end

  get '/choose-weapon' do
    @game = $game
    erb @game.result
  end

  get '/winner' do
    @game = $game
    erb :winner
  end

  run! if app_file == $0
end
