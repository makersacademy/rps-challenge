require 'sinatra/base'
require './lib/player.rb'
require './lib/computer.rb'
require './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_name])
    player2 = Computer.new
    @game = Game.create(player1, player2)
    erb :play
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    @player_name = @game.player1.name
    erb :play
  end

  post '/game' do
    @player_weapon = @game.play_game(params[:player_weapon])
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  run! if app_file == $0
end
