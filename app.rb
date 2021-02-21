require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/results'


class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/named-player' do
  $player_1 = Player.new(params[:player1])
  $computer = Computer.new
  redirect '/play'
end

get '/play' do
  @player1 = $player_1.name
  erb :player
end

post '/winner' do
  @player1 = $player_1.name
  @player_1_pick = params[:player1pick]
  @computer_pick = $computer.pick
  $game = Results.new
  @winner = $game.check(@player_1_pick, @computer_pick)
  erb :winner
end

run! if app_file == $0


end
