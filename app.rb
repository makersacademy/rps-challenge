require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/weapon'
require './lib/computer'

class Jajanken < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/configure' do
    Game.setup_game(rule_set: params[:rules])
    redirect '/register'
  end
  get '/register' do
    erb(:register)
  end

  post '/setup' do
    player1 = Player.new(name: params[:player1], weapon_class: Weapon)
    player2 = Computer.new(weapon_class: Weapon)
    setup = {
      player1: player1,
      player2: player2
    }
    Game.create(setup)
    redirect '/play'
  end
  before do
    @game = Game.current_game
  end

  post '/weapon' do
    @game.player1.select_weapon(params[:weapon])
    @game.player2.select_weapon
    redirect '/result'
  end

  get '/result' do
    @game.winner ? erb(:win) : erb(:tie)

  end

  get '/play' do
    @weapons = Game.weapons
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
