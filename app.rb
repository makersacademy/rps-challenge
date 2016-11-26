require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/weapons'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.create(Game, player, Weapons)
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player.name
    erb :play
  end

  get '/weapons' do
    @weapons = @game.weapons
    erb :weapons
  end

  post '/choice' do
    @player = @game.player
    @player.choose_weapon(Weapons, params[:weapon])
    redirect '/contest'
  end

  get '/contest' do
    p params
    @player = @game.player
    erb :contest
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
