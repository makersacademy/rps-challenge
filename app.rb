require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :start
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.new_game(player)
    redirect '/play'
  end

  post '/move' do
    @game.player.move(params[:move])
    redirect '/result'
  end

  get '/result' do
    erb @game.result(@game.player)
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
