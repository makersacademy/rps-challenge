require 'sinatra/base'
require './lib/rps.rb'
require './lib/computer.rb'

class RPSWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :game
  end

  post '/game' do
    @player_name = params[:player_name]
    @player_move = params[:player_move]
    @computer_move = Computer.new.computer_move
    @winner = RPS.new.result(@player_move, @computer_move)
    erb :play
  end
end
