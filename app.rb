require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new_game' do
    player_1 = Player.new(params[:player_1_name])
    computer_player = Computer.new("Computer")
    Game.instance.add_player(player_1)
    Game.instance.add_player(computer_player)
    redirect '/play'
  end

  get '/play' do
    @player_1 = Game.instance.players.first
    @player_2 = Game.instance.players.last
    erb :play
  end

  post '/play' do
    Game.instance.take_turn(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    Game.instance.players.last.select_attack
    @player_1 = Game.instance.players.first
    @player_2 = Game.instance.players.last
    @winner_name = Game.instance.evaluate_result
    erb :result
  end

  run! if app_file == $0

end
