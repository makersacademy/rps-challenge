require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    sologame = true if params[:player2_name] == ""
    player2 = (sologame ? Computer.new : Player.new(params[:player2_name]))
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player1' do
    @game.player1.weapon_choice(params[:weapon])
    @game.player2.weapon_choice
    erb :play
  end

  post '/player2' do
    @game.player2.weapon_choice(params[:weapon])
    erb :play
  end

  post '/fight' do
    @winner = @game.fight
    erb :result
  end

  post '/play_again' do
    redirect '/play'
  end

  run! if app_file == $0
end
