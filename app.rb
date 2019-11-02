require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/choose' do
    @game = $game
    erb :choose
  end

  post '/chosen' do
    @game = $game
    @game.player.weapons(params[:weapon])
    redirect '/chosen'
  end

  get '/chosen' do
    @game = $game
    erb :chosen
  end

  run! if app_file == $0

end
