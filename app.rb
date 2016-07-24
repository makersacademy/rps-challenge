require 'sinatra/base'
require_relative 'lib/player'
#require_relative 'lib/weapon'
require_relative 'lib/game'

class Rps < Sinatra::Base

  before do
     @game = Game.instance
  end

  get '/' do
    erb:index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    weapon = params[:weapon]
    @game.select_weapon(weapon)
    @game.select_computer_weapon
    redirect '/compete'
  end

  get '/compete' do
    erb :compete
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
