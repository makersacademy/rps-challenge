require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

get '/' do
  erb :index
end

post '/send-names' do
  $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
  redirect '/players_move'
end

get '/players_move' do
  @player_1_name = $game.player1.name
  @player_2_name = $game.player2.name
  erb :players_move
end


end
