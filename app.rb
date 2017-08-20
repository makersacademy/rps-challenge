require 'sinatra/base'
require './lib/player'
require './lib/weapon'
require './lib/game'
#
class RockPaperSissors < Sinatra::Base
# #
  enable :sessions
#
  get '/' do
    erb :index
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1])
    redirect '/pick_weapon'
  end

  get '/pick_weapon' do
    @player_1 = $player_1.name
    erb :pick_weapon
  end

  post '/weapon_picked' do
    p params
    $weapon = Weapon.new(params[:weapon])
    $comp_weapon = Weapon.new.weapon
    redirect '/game_on'
  end

  get '/game_on' do
    @game = Game.new($weapon.weapon, $comp_weapon)
    @outcome = @game.outcome
    erb :game_on
  end

  run! if app_file == $0

end
