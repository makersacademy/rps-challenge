require 'sinatra'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'


class RPS < Sinatra::Base

attr_reader :player

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.player_name
    erb :play
  end

  post '/battle' do
    $game = Game.new(params[:Weapon])
    redirect '/throwdown'
  end

  get '/throwdown' do
    @player_name = $player.player_name
    @weapon = $game.weapon
    @weapon2 = $game.weapon2
    @game = $game.result
    p @game
    erb :throwdown
  end

  run! if app_file == $0
end
