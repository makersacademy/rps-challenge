require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

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
    erb :play
  end

  post '/rock' do
    @game.player.choose_rock
    redirect '/choice'
  end

  post '/paper' do
    @game.player.choose_paper
    redirect '/choice'
  end

  post '/scissors' do
    @game.player.choose_scissors
    redirect '/choice'
  end

  get '/choice' do
    erb :choice
  end

  post '/computers_turn' do
    @game.computer.choose_weapon
    redirect '/result'
  end

  get '/result' do
    @game.who_won(@game.player.player_weapon, @game.computer.comp_weapon)
    erb :result
  end

  post '/again' do
    redirect '/play'
  end

end
