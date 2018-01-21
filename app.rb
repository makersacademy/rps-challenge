require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/name' do
  player = Player.new(params[:player_name])
  computer = Computer.new
  @game = Game.start(player, computer)
  erb :play
end

before do
  @game = Game.instance
end

post '/selection' do

end


  run! if app_file == $0
end
