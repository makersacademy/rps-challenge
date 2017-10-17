require 'sinatra/base'
require_relative './lib/computer_player.rb'
require_relative './lib/game.rb'
require_relative './lib/player.rb'
require_relative './lib/move.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :register
  end

  post '/name' do
    player_1 = Player.new(params[:player_name])
    player_2 = ComputerPlayer.new
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    $move = Move.new(params[:rps_choice])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end


  run! if app_file == $0
end
