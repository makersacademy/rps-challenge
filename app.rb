require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :choose_game
  end

  get '/vanilla' do
    erb :index
  end

  post '/single' do
    Game.new_game(Player.new(params[:player_name]))
    redirect 'play'
  end

  get '/play' do
    @player_name = Game.current_game.player_1.name
    erb :play
  end

  post '/single_result' do
    Game.current_game.player_1.move = params[:move]
    redirect '/single_result'
  end

  get '/single_result' do
    @result = Game.current_game.play_computer
    @name = Game.current_game.player_1.name
    erb @result
  end

  post '/multiplayer' do
    Game.new_game(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect 'multiplayer'
  end

  get '/multiplayer' do
    @player_1_name = Game.current_game.player_1.name
    @player_2_name = Game.current_game.player_2.name
    erb :multiplayer
  end

  post '/multiplayer_turn_1' do
    Game.current_game.player_1.move = params[:move]
    redirect '/multiplayer_turn_2'
  end

  get '/multiplayer_turn_2' do
    @player_1_name = Game.current_game.player_1.name
    @player_2_name = Game.current_game.player_2.name
    erb :player_2_turn
  end

  post '/multiplayer_turn_2' do
    Game.current_game.player_2.move = params[:move]
    redirect '/multiplayer_result'
  end

  get '/multiplayer_result' do
    @result = Game.current_game.multiplayer_result
    @name = Game.current_game.player_1.name
    erb @result
  end

  get '/rpsls' do
    erb :rpsls_index
  end

  post '/rpsls_single' do
    Game.new_game(Player.new(params[:player_name]), nil, rules = RulesPlus.new)
    redirect 'rpsls_play'
  end

  get '/rpsls_play' do
    @player_name = Game.current_game.player_1.name
    erb :rpsls_play
  end

  post '/rpsls_single_result' do
    Game.current_game.player_1.move = params[:move]
    redirect '/rpsls_single_result'
  end

  get '/rpsls_single_result' do
    @result = Game.current_game.play_computer
    @name = Game.current_game.player_1.name
    erb @result
  end

  post '/rpsls_multiplayer' do
    Game.new_game(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]),rules = RulesPlus.new)
    redirect 'rpsls_multiplayer'
  end

  get '/rpsls_multiplayer' do
    @player_1_name = Game.current_game.player_1.name
    @player_2_name = Game.current_game.player_2.name
    erb :rpsls_multiplayer
  end

  post '/rpsls_multiplayer_turn_1' do
    Game.current_game.player_1.move = params[:move]
    redirect '/rpsls_multiplayer_turn_2'
  end

  get '/rpsls_multiplayer_turn_2' do
    @player_1_name = Game.current_game.player_1.name
    @player_2_name = Game.current_game.player_2.name
    erb :rpsls_player_2_turn
  end

  post '/rpsls_multiplayer_turn_2' do
    Game.current_game.player_2.move = params[:move]
    redirect '/rpsls_multiplayer_result'
  end

  get '/rpsls_multiplayer_result' do
    @result = Game.current_game.multiplayer_result
    @name = Game.current_game.player_1.name
    erb @result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
