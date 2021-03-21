require 'sinatra'
require_relative './lib/player.rb' 
require_relative './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end 

  post '/play-rps' do
    session[:player] = params[:player]
    @player_1 = session[:player]
    erb :play
  end

  get '/play-rps' do
    @player_1 = session[:player]
    erb :play
  end

  post '/result' do
    @player_1 = session[:player]
    @game = Game.new(@player_1)
    session[:player_1_move] = params[:move]
    @player_1_move = session[:player_1_move]
    @player_2_move = @game.computer
    @result = @game.play(@player_1_move, @player_2_move)
    erb :results
  end 

end
