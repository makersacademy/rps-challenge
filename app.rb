require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class RPSLS < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player_1_name]
    session[:player2] = params[:player_2_name]
    redirect 'player1'
  end

  get '/player1' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:player1)
  end

  get '/player2' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    session[:weapon_p1] = params[:player_1_weapon]
    erb(:player2)
  end

  get '/result' do
    @weapon_p1 = session[:weapon_p1]
    @weapon_p2 = params[:player_2_weapon]
    @player1 = session[:player1]
    @player2 = session[:player2]
    game = Game.new(@player1, @player2)
    @result = game.win?(@weapon_p1, @weapon_p2)
    erb(:result)
  end
end
