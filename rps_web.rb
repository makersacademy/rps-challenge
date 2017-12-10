require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPSWeb < Sinatra::Base
  enable :sessions


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

post '/choice' do
  weapon = params[:player_choice].to_sym
  @game.player_choice(weapon)
  erb(:game)
  redirect '/choice'
end

get '/choice' do
  @game.computer_weapon
  erb(:game)
  redirect '/result'
end

get '/result' do
  erb(:result)
end

run! if app_file == $0
end
