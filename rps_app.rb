require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :session
  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/choice' do
    $game.player1.weapon=(params[:weapon])
    $game.computer.computer_choose_weapon
    redirect '/results'
  end

  get '/results' do
    @game = $game
    erb(:results)
  end
end
