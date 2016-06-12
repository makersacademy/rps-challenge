require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/log'

class Contest < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:login)
  end

  post '/name' do
    Game.create(params[:player_name])
    session[:id] = Game.game.length-1
    @game = Game.game[session[:id]]
    redirect '/play'
  end

  post '/multiname' do
    Game.create_multi(params[:player1_name])
    session[:id] = Game.game.length-1
    session[:player_id] = :player1
    @game = Game.game[session[:id]]
    sleep(1) while @game.player2 == :opponent
    redirect '/multiplay'
  end

  post '/multijoin' do
    session[:id] = Game.join_game
    Game.game[Game.join_game].player2 = params[:player2_name]
    session[:player_id] = :player2
    redirect '/multiplay'
  end

  get '/multiplay' do
    @player_id = session[:player_id]
    @game = Game.game[session[:id]]
    erb(:multiplay)
  end

  get '/play' do
    @game = Game.game[session[:id]]
    erb(:play)
  end

  post '/fight' do
    Game.game[session[:id]].fight(params[:move])
    redirect '/play'
  end

  post '/multifight' do
    @game = Game.game[session[:id]]
    @current_turn = @game.turns
    @game.p2_move = params[:move].dup if session[:player_id] == :player2
    @game.p1_move = params[:move].dup if session[:player_id] == :player1
    if !@game.p1_move.nil? && !@game.p2_move.nil?
      Game.game[session[:id]].fight(@game.p1_move, @game.p2_move)
    else
      sleep(1) while @game.turns == @current_turn
    end
    redirect '/multiplay'
  end

  run! if app_file == $PROGRAM_NAME
end
