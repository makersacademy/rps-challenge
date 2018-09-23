require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/opponent' do
    if params[:opponent] == 'Computer opponent'
      redirect '/singleplayer'
    else
      redirect '/multiplayer'
    end
  end

  get '/singleplayer' do
    erb(:singleplayer)
  end

  post '/name' do
    session[:player_one_name] = params[:name_one]
    session[:player_two_name] = nil || params[:name_two]

    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player_one_name]
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    if session[:player_two_name]
      redirect '/play_p2'
    else
      redirect '/result'
    end
  end

  get '/result' do
    @player1 = Player.new(name: session[:player_one_name])
    @player1.make_move(session[:move].downcase.to_sym)
    @game = Game.new(player1: @player1)
    @player2 = @game.player2
    @winner = @game.return_winner
    erb(:result)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  get '/play_p2' do
    @player2_name = session[:player_two_name]
    erb(:play_p2)
  end

  post '/move_p2' do
    session[:move_p2] = params[:move_p2]
    redirect '/result_mp'
  end

  get '/result_mp' do
    @player1 = Player.new(name: session[:player_one_name])
    @player1.make_move(session[:move].downcase.to_sym)
    @player2 = Player.new(name: session[:player_two_name])
    @player2.make_move(session[:move_p2].downcase.to_sym)
    @game = Game.new(player1: @player1, player2: @player2)
    @winner = @game.return_winner
    erb(:result_mp)
  end

end
