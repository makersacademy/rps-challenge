require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/computer_move'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/play' do


  @name = params[:name]
  erb :play
end

post '/result' do

  $computer = ComputerMove.new
  @player_move = params[:player_move]
  @computer_move = $computer.random_move
  $game = Game.new(@player_move, @computer_move)

  erb :result
end

run! if app_file == $0

end
