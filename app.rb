require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/name' do
  player = Player.new(params[:name])
  @game = Game.create(player)
  redirect '/play'
end

before do
  @game = Game.instance
end

get '/play' do
  erb :play
end

post '/options' do
  @game.player.weapon(params[:choice])
  @game.computer.choose_weapon
  redirect '/result'
end

get '/result' do
  erb :result
end

run! if app_file == $0

end
