require_relative 'lib/player'
require_relative 'lib/game'
require 'sinatra/base'

class RpsApp < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/single_player' do
    erb :single_player
  end

  post '/sp_game' do
    @player1 = Player.new(params[:player1])
    @player2 = Player.new("COMPUTER")
    @game = Game.create(@player1, @player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  run! if app_file == $0
end
