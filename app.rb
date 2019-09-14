require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/start_game' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    erb :start
  end

  get '/play' do
    $game.play(params[:rps_choice])
    erb :play
  end

end
