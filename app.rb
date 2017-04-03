require 'sinatra/base'
require './lib/player'


class RPS < Sinatra::Base
  set :sessions, true
  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $computer = Player.new("computer")
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player_1.name
    erb :play
  end

  post '/attack_rock' do
    @player_1 = $player_1.name
    erb :attack_rock
  end

  post '/attack_paper' do
    @player_1 = $player_1.name
    $computer.random_attack
    erb :attack_paper
  end

  post '/attack_scissors' do
    @player_1 = $player_1.name
    $computer.random_attack
    erb :attack_scissors
  end
end