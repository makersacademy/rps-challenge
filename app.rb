require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

get '/' do
erb :index
end


get '/namesplaysingle' do
erb :namessingle
end


post '/namesplaysingle' do
  # $player_1 = Player.new(params[:player_1_name])
  # $player_2 = Player.new(params[:player_2_name])
  $game = Game.new(params[:player_1_name])
  redirect '/playsingle'
end
get '/playsingle' do
 "sdfsdfsdf"
end


end
