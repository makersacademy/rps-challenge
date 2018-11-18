require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/weapon.rb'
require_relative './lib/computer_player'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/form' do
    @game = Game.create(Player.new(params[:name]), ComputerPlayer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    @game.player_1.add_weapon(Weapon.new(params[:weapon]))
    @game.player_2.add_weapon(Weapon.new(@game.player_2.choose_weapon))
    redirect '/result'
  end

  get '/result' do
    erb @game.result(@game.player_1.weapon.type, @game.player_2.weapon.type)
  end

end
