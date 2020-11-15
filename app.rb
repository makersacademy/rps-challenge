require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/hand-player-1'
  end

  get '/hand-player-1' do
    erb :hand_player_1
  end

  get '/hand-player-2' do
    erb :hand_player_2
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
