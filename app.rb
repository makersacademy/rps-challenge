require 'sinatra/base'
require './lib/player'
require './lib/weapon'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
    # erb :play
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/rock' do
    $weapon = Weapon.new
    $weapon.choose_rock
    redirect '/choice'
  end

  post '/paper' do
    $weapon = Weapon.new
    $weapon.choose_paper
    redirect '/choice'
  end

  post '/scissors' do
    $weapon = Weapon.new
    $weapon.choose_scissors
    redirect '/choice'
  end

  get '/choice' do
    @player_name = $player.name
    @weapon = $weapon.choice
    erb :choice
  end

  post '/computers_turn' do
    $weapon_comp = Weapon.new
    $weapon_comp.random_weapon
    redirect '/result'
  end

  get '/result' do
    @player_name = $player.name
    @weapon_comp = $weapon_comp.choice
    erb :result
  end

end
