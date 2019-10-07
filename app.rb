require 'sinatra'
require './lib/game'
require './lib/printer'
require './lib/result'

class Rps < Sinatra::Base
  enable :sessions
  disable :show_exceptions

  get '/' do
    erb :welcome
  end

  get '/names' do
    params[:mode] == 'One Player' ? (erb :one_player) : (erb :two_player)
  end

  post '/one_player' do
    Game.create(params[:player_one], 'one_player')
    redirect '/play'
  end

  post '/two_player' do
    Game.create(params[:player_one], 'two_player', params[:player_two])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instances
    erb :play
  end

  post '/play_again' do
    last_game = Game.instances
    @game = Game.create(last_game.player1, last_game.mode, last_game.player2)
    redirect '/play'
  end

  post '/play' do
    @game = Game.instances
    @game.make_choice(params[:choice])
    @game.game_over ? redirect('/result') : redirect('/play')
  end

  get '/result' do
    @game = Game.instances
    erb :result
  end

end
