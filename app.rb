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
  player_option = @game.player.option(params[:option])
  computer_option = @game.computer.option
  @game.moves(player_option, computer_option)
  @game.result
  redirect '/result'
end

get '/result' do
  erb :result
end


  run! if app_file == $0
end
