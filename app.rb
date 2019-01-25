require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  set :sessions, true

before do
  @game = Game.instance
end

get '/' do
  erb :index
end

post '/setup' do
  player_1 = Player.new(params[:player1])
  player_2 = Computer.new
  rounds = params[:rounds]
  @game = Game.create(player_1, player_2, rounds)
  redirect '/play'
end

get '/play' do
  erb :play
end

# get '/result' do
#   @winner = @game.round_winner?
#   erb :result
# end

get '/result' do
  @game.player_two.set_move
  @winner = @game.round_winner?
  if @winner != "Draw!"
    @winner.increment_score
    @game.increment_round
  end
  if @game.game_over?
    erb :game_over
  else
    erb :result
  end
end

post '/rock' do
  @game.player_one.set_move(params[:rock])
  redirect '/result'
end

post '/scissors' do
  @game.player_one.set_move(params[:scissors])
  redirect '/result'
end

post '/paper' do
  @game.player_one.set_move(params[:paper])
  redirect '/result'
end

end
