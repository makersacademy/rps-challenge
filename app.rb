require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/weapon.rb'
require_relative './lib/computer_player'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  before do
    @player = Player.instance
    @game = Game.instance
    @computer_player = ComputerPlayer.instance
  end

  get '/' do
    erb :index
  end

  post '/form' do
    @computer_player = ComputerPlayer.create
    @player = Player.create(params[:name])
    @game = Game.create(@player, @computer_player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    @game.player_1.add_weapon(Weapon.create(params[:weapon]))
    @game.player_2.add_weapon(Weapon.create(@game.player_2.choose_weapon))
    @game.winner(@game.player_1.weapon.type, @game.player_2.weapon.type)
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
