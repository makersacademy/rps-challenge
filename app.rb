require 'sinatra/base'
require 'sinatra'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/result' do
    @game = $game
    @move = params[:move].downcase
    erb :result
  end

  run! if app_file == $0
end
