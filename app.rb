require 'sinatra'
require './lib/game'
require './lib/printer'

class Rps < Sinatra::Base
  enable :sessions
  disable :show_exceptions

  get '/' do
    print "Get /"
    erb :welcome
  end

  get '/names' do
    print "GET NAME"
    params[:mode] == 'One Player' ? (erb :one_player) : (erb :two_player)
  end

  post '/one_player' do
    Game.create(params[:player_one], 'one_player_mode')
    redirect '/play'
  end

  post '/two_player' do
    print "post two player"
    Game.create(params[:player_one], 'two_player_mode', params[:player_two])
    redirect '/play'
  end

  get '/play' do
    print "get /play"
    @game = Game.instances
    erb :play
  end

  post '/play' do
    @game = Game.instances
    @game.make_choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instances
    erb :result
  end

end
