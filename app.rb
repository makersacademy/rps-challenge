require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer_player'
require './lib/weapon'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_one = Player.new(params[:player_one])
    if params[:player_two].empty?
      player_two = ComputerPlayer.new
    else
      player_two = Player.new(params[:player_two])
    end
    @game = Game.create(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game
    erb :play
  end

  post '/weapon' do
    @weapon_type = Weapon.new(params[:weapon_type])
    redirect '/weapon'
  end

  get '/weapon' do
    @game
    erb :weapon
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect '/play'
  end

  run if app_file == $0
end
