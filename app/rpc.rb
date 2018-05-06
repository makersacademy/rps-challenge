require 'sinatra/base'
require 'haml'
require './lib/game_engine'
require './lib/player'
require './lib/computer'

class RPC < Sinatra::Base
  enable :sessions

  before do
    @game = GameEngine.create_game

  end

  get '/' do
    haml(:index)
  end

  get '/weapon_choice' do
    @player1_name = @game.players.first.name
    @player2_name = @game.players.last.name
    haml(:weapon_choice)
  end

  get '/result' do
    @player1_name = @game.players.first.name
    @player2_name = @game.players.last.name
    @player1_choice = @game.players.first.weapon
    @player2_choice = @game.players.last.weapon
    haml(:result)
  end

  post '/game' do
    @game.players.first.weapon_choice(params[:name])
    @game.players.last.weapon_choice(nil)
    redirect '/result'
  end

  post '/name' do
    @game.reset
    @game.add_player(Player.new(params[:name]))
    @game.add_player(Computer.new)
    redirect '/weapon_choice'
  end

end
