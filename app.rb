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
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_name = @game.player.name
    erb :play
  end

  post '/rock' do
    @game = Game.instance
    @game.player.choose_rock
    redirect '/choice'
  end

  post '/paper' do
    @game = Game.instance
    @game.player.choose_paper
    redirect '/choice'
  end

  post '/scissors' do
    @game = Game.instance
    @game.player.choose_scissors
    redirect '/choice'
  end

  get '/choice' do
    @game = Game.instance
    @player_name = @game.player.name
    @player_weapon = @game.player.player_weapon
    erb :choice
  end

  post '/computers_turn' do
    @game = Game.instance
    @game.computer.choose_weapon
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @player_name = @game.player.name
    @comp_name = @game.computer.name
    @player_weapon = @game.player.player_weapon
    @comp_weapon = @game.computer.comp_weapon
    @winner = @game.winner(@player_weapon, @comp_weapon)
    erb :result
  end

  post '/again' do
    redirect '/play'
  end

end
