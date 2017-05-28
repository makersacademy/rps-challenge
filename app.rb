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
    session[:game] = Game.new(Player.new(params[:player]))	  
    redirect '/play'
  end

  post '/login_multi' do
    session[:game] = Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    redirect '/play'
  end

  
  get '/play' do
    @game = session[:game]
    @player1 = @game.player1
    @player2 = @game.player2
    erb :play
  end

  post '/rock' do
    @player = session[:game].player
    @player.draw_rock
    session[:game].computer.play_hand
    session[:game].winner
    redirect '/play'
  end

  post '/scissors' do
    @player = session[:game].player
    @player.draw_scissors
    session[:game].computer.play_hand
    session[:game].winner
    redirect '/play'
  end

  post '/paper' do
    @player = session[:game].player
    @player.draw_paper
    session[:game].winner
    session[:game].computer.play_hand
    redirect '/play'
  end

  post '/lizard' do
    @player = session[:game].player
    @player.draw_lizard
    session[:game].winner
    session[:game].computer.play_hand
    redirect '/play'
  end
  post '/spock' do
    @player = session[:game].player
    @player.draw_spock
    session[:game].winner
    session[:game].computer.play_hand
    redirect '/play'
  end
end
