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
    $game.player_1.choose_move(Move.new(params[:rps_choice]))
    $game.player_2.choose_move(Move.new(ComputerPlayer.new.random_move))
    #need a way so that the computer doesnt have to distinguish beetween computer and human players
    redirect '/result'
  end

  get '/result' do
    erb :result
  end


  run! if app_file == $0
end
