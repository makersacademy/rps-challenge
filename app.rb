require 'sinatra/base'
require './lib/player'
require './lib/comp'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:styling) + erb(:index)
  end

  post '/play' do
    $player = Player.new(params[:player_name])
    erb(:styling) + erb(:play) + erb(:player_choices)
  end

  post '/game' do
    @player_choice = $player_choice = $player.choice = params[:player_choice]
    @comp_choice = $comp_choice = Comp.new.choice
    @game_result = Game.new.result
    erb(:styling) + erb(:game_result)
  end

end
