require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapon'

class Rps < Sinatra::Base

    before do
      @game = Game.instance
    end

    get '/' do
      erb :index
    end

    post '/names' do
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new("Jigsaw")
      @game = Game.create(player_1, player_2)
      redirect '/play'
    end

    get '/play' do
      erb :play
    end

    post '/weapon_choice' do
      @game.player_1.weapon_choice(params[:weapon_choice])
      @game.player_2.weapon_choice(Weapon::WEAPON.sample)
      redirect '/result'
    end

    get '/result' do
      erb(:result)
    end

    # start the server if ruby file executed directly
    run! if app_file == $0
  end
