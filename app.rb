require 'sinatra/base'
require_relative 'lib/computer_move'
require_relative 'lib/player'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/play' do
  $player = Player.new(params[:name])
  @name = $player.name
  erb :play
end

post '/result' do
  $computer = ComputerMove.new
  @player_choice = params[:player_choice]
  @computer_move = $computer.random_move
  erb :result
end

run! if app_file == $0

end
