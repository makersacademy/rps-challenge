require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Computer.new
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    @game = Game.instance
    @game.player1.weapon_choice(params[:weapon])
    @game.player2.weapon_choice
    @winner = @game.fight(@game.player1, @game.player2)
    erb :result
  end

  post '/play_again' do
    redirect '/play'
  end

  run! if app_file == $0
end
