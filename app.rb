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
    @current_player.draw_rock
    session[:game].multiplayer ? redirect('/multiplayer') : redirect('/singleplayer')
  end

  post '/scissors' do
    @current_player = session[:game].current_player
    @current_player.draw_scissors
    session[:game].multiplayer ? redirect('/multiplayer') : redirect('/singleplayer')
  end

  post '/paper' do
    @current_player = session[:game].current_player
    @current_player.draw_paper 
    session[:game].multiplayer ? redirect('/multiplayer') : redirect('/singleplayer')
  end

  post '/lizard' do
    @current_player = session[:game].current_player
    @current_player.draw_lizard
    session[:game].multiplayer ? redirect('/multiplayer') : redirect('/singleplayer')
  end
 
  post '/spock' do
    @current_player = session[:game].current_player
    @current_player.draw_spock
    session[:game].multiplayer ? redirect('/multiplayer') : redirect('/singleplayer')
  end

  get '/multiplayer' do
    session[:game].find_winner if session[:game].final_hand?
    session[:game].switch_player
    redirect '/play'
  end

  get '/singleplayer' do
    session[:game].opponent.play_hand 
    session[:game].find_winner
    redirect '/play'
  end 
end
