require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  set :session_secret, "super_secret"
  enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player_1 = Player.new(params[:player1])
  $game_1 = Game.new(params[:shape])
  #$shape = session[:shape]
  p $player_1
  redirect to '/play'
 end
#
get '/play' do
  @player = $player_1
  @game = $game_1

  erb :play
end

post '/game' do
  "Game on!"
  erb :play
end

end
