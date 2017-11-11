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
    erb :select_2
  end

  get '/player_1_rock' do
    @game.player_1.choose_weapon(:rock)
    erb :game
  end

  get '/player_1_paper' do
    @game.player_1.choose_weapon(:paper)
    erb :game
  end

  get '/player_1_scissors_' do
    @game.player_1.choose_weapon(:scissors)
    erb :game
  end

  get '/player_1_rock_2p' do
    @game.player_1.choose_weapon(:rock)
    erb :select_3
  end

  get '/player_1_paper_2p' do
    @game.player_1.choose_weapon(:paper)
    erb :select_3
  end

  get '/player_1_scissors_2p' do
    @game.player_1.choose_weapon(:scissors)
    erb :select_3
  end

  get '/player_2_rock_2p' do
    @game.player_2.choose_weapon(:rock)
    erb :game
  end

  get '/player_2_paper_2p' do
    @game.player_2.choose_weapon(:paper)
    erb :game
  end

  get '/player_2_scissors_2p' do
    @game.player_2.choose_weapon(:scissors)
    erb :game
  end

  get '/play again' do
    erb :index
  end

  run! if app_file == $0
end
