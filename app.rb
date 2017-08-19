require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapon'



class RPS < Sinatra::Base
  enable :sessions
  set :bind, '192.168.1.111'

  get '/' do
    $score = 0
    erb(:index)
  end

  post '/names' do
    $player = params[:Player]
    erb(:play)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    erb(:play)
  end

  post '/outcome' do
    weapon = params[:action]
    play_game(weapon)
    erb(:outcome)
  end

  def play_game(weapon)
    weapon1 = Weapon.new weapon
    @game = Game.new(weapon1)
  end

  run! if app_file == $PROGRAM_NAME
end
