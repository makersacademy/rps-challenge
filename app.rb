require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class App < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:name])
    $game = Game.new($player)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    $player.move(params[:choice])
    $game.assign_computer_move
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end
end
