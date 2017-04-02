require 'sinatra'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  get '/single-player' do
    erb :single_player
  end

  post '/names' do
    p params
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
