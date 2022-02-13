require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    $player_1 = Player.new(params[:player_1])
    @player_1 = $player_1
    erb :play 
  end

   post '/game' do
    @weapon = Weapon.new(params[:choice])
    @player_1 = $player_1
    $player_1.add_weapon(Weapon.new(params[:choice]))
    @player_2 = Player.new("Computer")
    @weapon_2 = Weapon.new(Computer.new.weapon)
    @player_2.add_weapon(@weapon_2)
    @game = Game.new
    @game.add(@player_1, @player_2)
    @result = @game.play_game
    erb :game
  end

  post '/finish' do
     $player = nil
     redirect '/'

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end