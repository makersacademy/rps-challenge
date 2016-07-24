require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/name' do
  player = Player.new(params[:name])
  computer = Computer.new
  @game = Game.create(player, computer)
  redirect '/play'
end

before do
  @game = Game.instance
end

get '/play' do
  erb :play
end

post '/options' do
  @game.player.choose_weapon(params[:choice])
  @game.computer.choose_weapon
  redirect '/result'
end

get '/result' do
  erb :result
end

run! if app_file == $0

end
