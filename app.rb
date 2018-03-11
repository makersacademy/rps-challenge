require 'sinatra/base'
require './lib/game_model.rb'

class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:game_model] = Game_model.new(params[:player1_name], params[:player2_name])
    @player1 = session[:game_model].player1
    @player2 = session[:game_model].player2
    erb :welcome
  end

  get '/play' do
    @game_model = session[:game_model]
    @next_player = @game_model.player1
    erb :play
  end

  post '/play' do
    @game_model = session[:game_model]
    @player_move = params[:move].to_sym
    if @game_model.turn == :player1
      @next_player = @game_model.player2
      @game_model.move1(@player_move)
      erb :play
    else
      @next_player = @game_model.player1
      @game_model.move2(@player_move)
      @game_model.game_finished ? (redirect to('/end_game')) : (erb :play)
    end
  end

  get '/end_game' do
    @final_result = session[:game_model].final_result
    erb :final_result
  end

  run! if app_file == $0
end
