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
    $weapon = Weapon.new(:rock)
    redirect '/choice'
  end

  post '/paper' do
    $weapon = Weapon.new(:paper)
    redirect '/choice'
  end

  post '/scissors' do
    $weapon = Weapon.new(:scissors)
    redirect '/choice'
  end

  get '/choice' do
    @player_name = $player.name
    @weapon = $weapon.choice
    p @weapon
    erb :choice
  end

end
