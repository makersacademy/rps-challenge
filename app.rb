require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/set_player' do
    $player1 = Player.new(params[:p1name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/new_game' do
    new_rps = Game.new($player)
    redirect '/results'
  end

  run! if app_file == $0
end
