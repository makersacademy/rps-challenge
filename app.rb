require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer_player'
require './lib/game'
 
class RPS < Sinatra::Base
 configure :development do
  register Sinatra::Reloader
 end
 
 get '/' do
   erb :index
 end

 post '/names' do
  player_1 = Player.new(params[:player_1_name])
  player_2 = ComputerPlayer.new
  $game = Game.new(player_1, player_2)
  redirect '/play'
end

get '/play' do
  @game = $game
  erb :play
end

post '/move' do
  @game = $game
  @game.player_1.current_move(params[:Choice])
  @game.player_2.current_move
  $outcome = @game.current_round(@game.player_1.current_move(params[:Choice]), @game.player_2.current_move)
  erb :move
end

post '/continue' do
  @game = $game
  if (@game.player_1.wins == 3) or (@game.player_2.wins == 3)
    redirect '/game-over'
  else
    redirect '/play'
  end
end

get '/game-over' do
  @game = $game
  erb :game_over
end
 
 # start the server if ruby file executed directly
 run! if app_file == $0
end
