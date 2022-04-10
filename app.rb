require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer_player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player]), ComputerPlayer.new)
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  post '/weapon-choice' do
    $game.player1.weapon = params[:weapon]
    $game.player2.random_weapon
    $game.declare_winner
    redirect '/winner'
  end

  get '/winner' do
    erb(:winner)
  end

  run! if app_file == $0
end
