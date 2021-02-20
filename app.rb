require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/play' do
    $player = Player.new(params[:player_name])
    erb(:play) + erb(:player_choices)
  end

  post '/game' do
    @player_choice = $player.choice=(params[:player_choice])
    @comp_choice = Game.new.comp_choice
    $comp_choice = @comp_choice
    erb(:game)
  end

end
