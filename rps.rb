require 'sinatra/base'
require './models/player.rb'
require './models/computer.rb'
require './models/game.rb'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb:index
  end

  post '/name' do
    $player_1_name = Player.new(params[:player_1_name])
    p params
    redirect '/play'
  end

  get '/play' do

    @player_1_name = $player_1_name.name

    erb:play
  end

  get '/move' do
    @player_1_name = $player_1_name.name
    @player_move = $player_1_name.player_move(params[:player_move])
    $computer_move = Computer.new.computer_move
    $result = Game.new.show_winner($computer_move, @player_move)
    p $result
    erb:move
  end

  run! if app_file == $0
end
