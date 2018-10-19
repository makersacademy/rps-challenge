require 'sinatra/base'
require './lib/model.rb'
require './lib/player.rb'
require './lib/game.rb'

class Controller < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game_current = Game.instance
    @player_1 = Player.instance
  end

  post '/name' do
    @player_1 = Player.create(params[:player_name])
    redirect 'game_type'
  end

  get '/game_type' do
    @player_1_name = @player_1.name
    erb :game_type
  end

  post '/game_option' do
    @game = Game.create(params[:game])
    redirect '/rps_game'
  end

  get '/rps_game' do
    @player_1_name = @player_1.name
    @game = @game_current.game_type
    erb :rps_game
  end

  post '/move' do
    session[:player_move] = params[:player_move]
    redirect '/game_result'
  end

  get '/game_result' do
    @player_1_name = @player_1.name
    @player_move = session[:player_move]
    @player_2_move = machine_move
    @result = rock(@player_2_move) if @player_move == "rock"
    @result = paper(@player_2_move) if @player_move == "paper"
    @result = scissors(@player_2_move) if @player_move == "scissors"
    erb :game_result
  end

  post '/play_again' do
    session[:again] = params[:again]
    redirect '/game_type'
  end

  run! if app_file == $0

end
