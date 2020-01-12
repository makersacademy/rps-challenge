require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do 
    @game = Game.instance
    @player_1 = Player.instance
    @player_2 = Player.instance
  end

  get '/' do 
    erb :index
  end

  get '/single_player' do
    @player_1 = Player.create(params[:player_1_name])
    @player_2 = Player.create('CPU')
    @game = Game.create(@player_1, @player_2)
    erb :play
  end

  get '/player_2_name' do
    @player_1 = Player.create(params[:player_1_name])
    erb :player_2_name
  end

  get '/multiplayer' do
    @player_2 = Player.create(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    p @game
    erb :play
  end

  run! if app_file == $0

end

