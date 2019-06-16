require 'sinatra/base'
require_relative './lib/player'

class RpsApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect to('/play')
  end

  get '/play' do
    @player_name = $player.name
    @player_move = $player.move
    erb :play
  end

  post '/move' do
    $player.choose(params[:move])
    redirect to('/play')
  end

  run! if app_file == $0
end
