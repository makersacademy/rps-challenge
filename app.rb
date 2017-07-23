require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer_player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new(params[:player_one])
    if params[:player_two].empty?
      player_two = ComputerPlayer.new
    else
      player_two = Player.new(params[:player_two])
    end
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  run if app_file == $0
end
