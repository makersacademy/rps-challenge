require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player = @game.player
    erb :play
  end

  post '/rock' do
    @game = $game
    @player = @game.player
    @player.weapon_selector('Rock')
    redirect '/play'
  end

  post '/paper' do
    @game = $game
    @player = @game.player
    @player.weapon_selector('Paper')
    redirect '/play'
  end

  post '/scissors' do
    @game = $game
    @player = @game.player
    @player.weapon_selector('Scissors')
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
