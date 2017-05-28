require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/login' do
    session[:game] = Game.new(Player.new(params[:player]))	  
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @player = @game.player
    @computer = @game.computer
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
end
