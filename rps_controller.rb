require 'sinatra/base'
require './lib/player'
require './lib/game'
class RPS < Sinatra::Base

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :singleplayer
  end

  get '/singleplayer' do
    erb :singleplayer
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  post '/play' do
    Game.create(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/game' do
    @game.player1.weapon_choice(params[:weapon].to_sym)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  run! if app_file == $0
end
