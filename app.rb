require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :register
  end

  post '/start_game' do
    $player = Player.new(params[:name])
    erb :start
  end

  get '/play' do
    $player.rps_choice = params[:rps_choice]
    $game = Game.new($player)
    erb :play
  end

  get '/play_again' do
    erb :start
  end

end
