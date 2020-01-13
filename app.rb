require 'sinatra/base'
require './lib/computer.rb'
require './lib/game.rb'


class MyRPS < Sinatra:: Base
  attr_accessor :player_name, :move, :compmove, :game

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:player_name]
    @move = params[:move]
    erb :player
  end

  post '/move' do
    @player_name = @player_name
    @move = params[:move]
    @compmove = Computer.new.computer_move
    @game = Game.new.game
    erb :move
  end



run if app_file =$0


end
