require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    #enter_names
    erb :index
  end

  post '/single_player_name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/single_player_enter_move'
  end

  post '/two_player_name' do
    player_1 = Player.new(params[:player_2_name])
    player_2 = Player.new(params[:player_3_name])
    @game = Game.create(player_1, player_2)
    redirect '/two_player_enter_move1'
  end

  before do
    @game = Game.instance
  end

#SINGLE PLAYER STREAM
  get '/single_player_enter_move' do
    erb :sp_enter_move
  end

  post '/single_player_move' do
    @game.player1.move = (params[:choice])
    @game.player2.move = @game.player2.random_move
    @game.evaluate(@game.player1, @game.player2)
    redirect '/single_player_outcome'
  end

  get '/single_player_outcome' do
    erb :sp_outcome
  end

#TWO PLAYER STREAM
  get '/two_player_enter_move1' do
    erb :tp_enter_move1
  end

  post '/two_player_move1' do
    @game.player1.move = (params[:choice])
    redirect '/two_player_enter_move2'
  end

  get '/two_player_enter_move2' do
    erb :tp_enter_move2
  end

  post '/two_player_move2' do
    @game.player2.move = (params[:choice])
    @game.evaluate(@game.player1, @game.player2)
    redirect '/two_player_outcome'
  end

  get '/two_player_outcome' do
    erb :tp_outcome
  end

  # start the server if ruby file executed directly
 run! if app_file == $0

end
