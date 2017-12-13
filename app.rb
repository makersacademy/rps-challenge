require 'sinatra'
require './lib/computer.rb'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :players
  end

  get '/index' do
    erb :index
  end

  get '/index_2' do
    erb :index_2
  end

  get '/one_player' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    erb :select
  end

  get '/two_player' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    erb :select2
  end

  get '/p1_vs_cpu' do
    @game.player_1.choose_weapon(params[:weapon])
    erb :game
  end

  get '/p1_vs_p2' do
    @game.player_1.choose_weapon(params[:weapon])
    erb :select3
  end

  get '/p2_vs_p1' do
    @game.player_2.choose_weapon(params[:weapon])
    erb :game
  end

  get '/play again' do
    erb :index
  end

  run! if app_file == $0
end
