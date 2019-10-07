require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :game
  end

  post '/player' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    p params
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    session[:player_move] = params[:player_move]
    redirect '/winner'
  end

  get '/winner' do
    @player_move = session[:player_move]
    computer = Computer.new
    @computer_move = computer.play
    game = Game.new(@player_move, @computer_move)
    @result = game.result
    erb :result
  end

end
