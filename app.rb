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
    Game.instance.add_players([player_1, computer_player])
    redirect '/play'
  end

  get '/play' do
    @player_1 = Game.instance.player_1
    @player_2 = Game.instance.player_2
    erb :play
  end

  post '/play' do
    Game.instance.select_player_attack(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    Game.instance.player_2.select_attack # select computer attack
    @player_1 = Game.instance.player_1
    @player_2 = Game.instance.player_2
    @winner_name = Game.instance.evaluate_result
    erb :result
  end

  run! if app_file == $0

end
