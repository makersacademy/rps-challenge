# frozen_string_literal: true

require 'sinatra/base'
require './lib/rps_game'
require './lib/player'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    erb :register_player
  end

  post '/do_register' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    if @player_name.to_s.empty?
      erb :no_name_error
    else
      erb :play
    end
  end

  post '/do_play' do
    game = RpsGame.new
    @computer_move = game.random_move
    @user_move = params[:move]
    game_result = game.move(@user_move, @computer_move)
    case game_result
    when RpsGame::P1_WINS
      @win_msg = 'You Win!'
    when RpsGame::P2_WINS
      @win_msg = 'You Lose!'
    when RpsGame::DRAW
      @win_msg = "It's a draw..."
    end
    @player_name = session[:player_name]
    erb :result
  end

  get '/logout' do
    session[:player_name] = ''
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
