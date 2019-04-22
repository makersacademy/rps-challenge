require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    # $player = Player.new(params[:player])
    redirect to('/play')
  end

  post '/play' do
    $player = Player.new(params[:player])
    @player = $player.name
    erb(:play)
  end

  post '/result' do
    $player = Player.new(params[:player])
    @player = $player.name
    $play = Game.new(params[:Rock] || params[:Paper] || params[:Scissors])
    $play.win_calculator
    @play_result = $play.result
    @opponent_pick = $play.opponent_choice
    erb(:play)
  end

  run! if app_file == $0
end
