require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base

get '/' do
  erb(:index)
end

post '/player' do
  @game = Game.create(Player.new(params[:player_name]), Computer.new)
  erb(:player)
end

before do
  @game = Game.instance
end

post '/game' do
  erb(:game)
end


run! if app_file == $0
end
