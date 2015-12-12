require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/weapon' do
    @player = $player
    @player.choose_weapon(params[:weapon])
    redirect '/weapon'
  end

  get '/weapon' do
    @player = $player
    erb :weapon
  end

  post '/computer' do
    @player = $player
    @player.choose_weapon(@player.weapon_choices[Kernel.rand(0..2)])
    redirect '/result'
  end

  get '/result' do
    @player = $player
    erb :result
  end

  run! if app_file == $0
end
