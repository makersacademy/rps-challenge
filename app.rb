require 'sinatra/base'
require './lib/model.rb'
require './lib/player.rb'
require './lib/game.rb'

class Controller < Sinatra::Base
  enable :sessions

  before do
    @game_current = Game.instance
    @player_1 = Player.instance
    @player_2 = Player.instance
  end

  get '/' do
    erb :index
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
    @game_current = Game.instance
    @game_current.grab_player_1(@player_1)
    if @game_current.game_type == 'Human Vs. Machine'
      @player_2 = Player.create("The Machine")
      redirect '/rps_game'
    end
    redirect '/P2_human' if @game_current.game_type == 'Human Vs. Human'
  end

  get '/P2_human' do
    erb :P2_human
  end

  post '/P2_name' do
    if @game_current.game_type == 'Human Vs. Human'
      @player_2 = Player.create(params[:player_2_name])
    end
    redirect '/rps_game'
  end

  get '/rps_game' do
    @player_1_name = @game_current.players[0].name
    @player_2_name = @player_2.name
    @game = @game_current.game_type
    erb :rps_game
  end

  post '/move' do
    @game_current.grab_player_move(params[:player_move])
    redirect '/game_result' if @game_current.game_type == 'Human Vs. Machine'
    redirect '/P2_move' if @game_current.game_type == 'Human Vs. Human'
  end

  get '/P2_move' do
    @player_1_name = @game_current.players[0].name
    @player_2_name = @player_2.name
    @game = @game_current.game_type
    erb :P2_move
  end

  post '/set_P2_move' do
    session[:P2_move] = params[:player_move]
    redirect 'game_result'
  end

  get '/game_result' do
    @player_1_name = @game_current.players[0].name
    @player_2_name = @player_2.name
    @player_1_move = @game_current.player_1_move
    if @game_current.game_type == 'Human Vs. Machine'
      @player_2_move = machine_move
    else
      @player_2_move = session[:P2_move]
    end
    @result = rock(@player_2_move) if @player_1_move == "rock"
    @result = paper(@player_2_move) if @player_1_move == "paper"
    @result = scissors(@player_2_move) if @player_1_move == "scissors"
    erb :game_result
  end

  post '/play_again' do
    session[:again] = params[:again]
    redirect '/'
  end

  run! if app_file == $0

end
