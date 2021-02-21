require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base

get '/' do
  erb :index
end

post '/send-names' do
  $game = Game.new(Player.new(params[:player_1_name]))
  redirect '/players_move'
end

get '/players_move' do
  @player_1_name = $game.player1.name
  erb :players_move
end

post '/send-move' do
  $game.player1.make_move(params[:move])
  redirect '/game-outcome'
end



get '/game-outcome' do
  @player_1_move = $game.player1.move
  @result = $game.result
  erb :game_outcome
end

end
