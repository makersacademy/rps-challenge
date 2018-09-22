require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_one] = Player.new(name: params[:name_one])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player_one]
    session[:game] = Game.new(player1: @player1)
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    @player1 = session[:player_one]
    @player1.make_move(params[:move].downcase.to_sym)
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @player1 = session[:player_one]
    @player2 = @game.player2
    @winner = @game.return_winner
    erb(:result)
  end

end
