require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

# Welcome page to enter name
  get '/' do
    erb :index
  end

  post '/names' do
    p params
    player = Player.new(params[:player])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
