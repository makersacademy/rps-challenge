require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapon'

class RPS < Sinatra::Base
  enable :sessions

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

  post '/rock' do
    play_game('rock')
    erb(:rock)
  end

  post '/paper' do
    play_game('paper')
    erb(:paper)
  end

  post '/scissors' do
    @score = $score
    play_game('scissors')
    erb(:scissors)
  end

  def play_game(weapon)
    weapon1 = Weapon.new weapon
    @game = Game.new(weapon1)
  end

  run! if app_file == $PROGRAM_NAME
end
