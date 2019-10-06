require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Player.new("Computer")
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player.name
    erb :play
  end

  post '/rock' do
    $game.player.choose_rock
    redirect '/choice'
  end

  post '/paper' do
    $game.player.choose_paper
    redirect '/choice'
  end

  post '/scissors' do
    $game.player.choose_scissors
    redirect '/choice'
  end

  get '/choice' do
    @player_name = $game.player.name
    @player_weapon = $game.player.player_weapon
    erb :choice
  end

  post '/computers_turn' do
    $game.computer.choose_weapon
    redirect '/result'
  end

  get '/result' do
    @player_name = $game.player.name
    @comp_name = $game.computer.name
    @player_weapon = $game.player.player_weapon
    @comp_weapon = $game.computer.comp_weapon
    @winner = $game.winner(@player_weapon, @comp_weapon)
    erb :result
  end

end
