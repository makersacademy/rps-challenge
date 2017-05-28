require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  
  get '/start_single' do
    erb :login_single
  end

  get '/start_multi' do
    erb :login_multi
  end
  
  post '/login_single' do
    session[:game] = Game.new(Player.new(params[:player1]))	  
    redirect '/play'
  end

  post '/login_multi' do
    session[:game] = Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    session[:game].set_multiplayer
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  post '/rock' do
    @current_player = session[:game].current_player
    @current_player.draw_rock unless session[:game].computer_mode 
    @session.play_hand if session[:game].computer_mode
    session[:game].winner if session[:game].final_hand?
    session[:game].switch_player
    redirect '/play'
  end

  post '/scissors' do
    @current_player = session[:game].current_player
    @current_player.draw_scissors unless session[:game].computer_mode 
    @session.play_hand if session[:game].computer_mode
    session[:game].winner if session[:game].final_hand?
    session[:game].switch_player
    redirect '/play'
  end

  post '/paper' do
    @player1 = session[:game].player1
    @player1.draw_paper
    session[:game].winner
    session[:game].player2.play_hand
    redirect '/play'
  end

  post '/lizard' do
    @player1 = session[:game].player1
    @player1.draw_lizard
    session[:game].winner
    session[:game].player2.play_hand
    redirect '/play'
  end
  post '/spock' do
    @player1 = session[:game].player1
    @player1.draw_spock
    session[:game].winner
    session[:game].player2.play_hand
    redirect '/play'
  end
end
