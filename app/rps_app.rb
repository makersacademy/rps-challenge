require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_one_name] = params[:name_one]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player_one_name]
    erb(:play)
  end

  post '/move' do
    session[:move] = params[:move]
    redirect '/result'
  end

  get '/result' do
    @player1 = Player.new(name: session[:player_one_name])
    @player1.make_move(session[:move].downcase.to_sym)
    @game = Game.new(player1: @player1)
    @player2 = @game.player2
    @winner = @game.return_winner
    erb(:result)
  end

end
