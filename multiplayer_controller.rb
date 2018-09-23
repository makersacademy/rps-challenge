require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Multiplayer < Sinatra::Base
  enable :sessions
  
  get '/multiplayer' do
    erb :multiplayer
  end

  post '/multiplayer-game' do
    session[:player1] = Player.new(params[:player1])
    session[:player2] = Player.new(params[:player2])
    session[:game] = Game.new
    redirect '/multiplayer-game'
  end

  post '/flip-coin' do
    session[:flipped_coin] = [session[:player1].name, session[:player2].name].sample
    redirect '/multiplayer-game'
  end

  get '/multiplayer-game' do
    erb :multigame, { locals: { player1: session[:player1], player2: session[:player2], flip_coin: session[:flipped_coin] } }
  end

end