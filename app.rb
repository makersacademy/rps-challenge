require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  ### HOME PAGE

  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/move' do
    @game.player_1.get_move(params[:move])
    @game.random_move
    @who_wins = @game.move_comparison(@game.player_1.move, @game.computer_move)
    @game.player_1.gain_point if @who_wins == 'You Win'
    @game.gain_point if @who_wins == 'Computer Wins'
    erb :move
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    game = Game.create(player_1, player_2)
    redirect '/play1'
  end

  get '/play1' do
    erb :play1
  end

  get '/play2' do
    @game.player_1.get_move(params[:move1])
    @game.player_2.get_move(params[:move2])
    erb :play2
  end

  get '/moves' do
    @game.player_2.get_move(params[:move2])
    @who_wins = @game.move_comparison(@game.player_1.move, @game.player_2.move)
    @game.player_1.gain_point if @who_wins == 'You Win'
    @game.player_2.gain_point if @who_wins == 'Computer Wins'
    erb :moves
  end


  run! if app_file == $0
end
