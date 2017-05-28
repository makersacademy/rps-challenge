require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/weapon'
require_relative './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    player_two = Computer.new
    @game = Game.create(player_one, player_two)
    redirect('/play')
  end

  get '/play' do
    @game = Game.instance
    @game.reset
    erb(:play)
  end

  post '/decide_winner' do
    @game = Game.instance
    @game.player_one.choose_weapon(params[:player_one_weapon])
    @game.player_two.choose_weapon
    @game.decide_winner
    redirect('/result')
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

end
