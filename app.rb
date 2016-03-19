require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :signup
  end

  post '/names' do
  	player_1 = Player.new(params[:player_1])
  	player_2 = Player.new("The Computer")
  	Game.create(player_1, player_2)
  	redirect '/RPS'
  end

  get '/RPS' do
  	erb :RPS
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
