require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    Player.create_player_1(params[:name])
    redirect to('/weapons')
  end

  get '/weapons' do
    @player_1 = Player.player_1
    erb :weapons
  end

  post '/multiplayer' do
    Player.player_1.choose(params[:weapon])
    erb :multiplayer_weapons
  end

  post '/play_computer' do
    Player.player_1.choose(params[:weapon])
    Player.create_player_2("RandomMAMAjamma")
    Player.player_2.choose(Game.new.random_weapon)
    redirect to('/game')
  end

  post '/play_opponent' do
    Player.create_player_2(params[:name])
    Player.player_2.choose(params[:weapon])
    redirect to('/game')
  end

  get '/game' do
    @game = Game.new
    @player_1 = Player.player_1
    @player_2 = Player.player_2
    @winner = @game.check(@player_1.weapon, @player_2.weapon)
    erb :game
  end

  run! if app_file == $0

end
