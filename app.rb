require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapon'

class RPS < Sinatra::Base
  enable :sessions
  set :bind, '192.168.1.111'

  get '/' do
    session[:score] = 0
    erb(:index)
  end

  post '/names' do
    session[:player] = Player.new(params[:Player])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  post '/outcome' do
    @player = session[:player]
    @score = session[:score]
    weapon = params[:action]
    play_game(weapon)
    @game.shoot
    erb(@game.result)
  end

  def play_game(weapon)
    cpu_weapon = Weapon.new weapon
    @game = Game.new(cpu_weapon)
  end

  run! if app_file == $PROGRAM_NAME
end
