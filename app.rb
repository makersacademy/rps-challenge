require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer.rb'

class Rps < Sinatra::Base
enable :sessions

before do
  @game = Game.the_game
end

get '/' do
  erb(:index)
end

post '/initialise' do
  player1 = Player.new(params[:player1])
  player2 = Computer.new
  @game = Game.create(player1, player2)
  redirect '/game'
end

get '/game' do
  erb(:game)
end

post '/attack' do
  @game.attack(@game.player1, @attacked.to_sym)
  @game.attack(@game.player2)
  redirect '/result'
  #
end

get '/result' do

  erb(:result)
end

run! if app_file == $0
end