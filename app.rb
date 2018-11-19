require 'sinatra'
require './lib/player'
require './lib/move'
class RockPaperScissors < Sinatra::Base
get '/' do
  erb :index
end

post '/results' do
  $player1 = Player.new(params[:player1])
  $move = Move.new(params[:move])
  redirect '/play'
end

get '/play' do
  @player1 = $player1
  @move = $move
  erb :play
end
run! if app_file == $0

end
