require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player = Player.new(params['player_1_name'])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/move' do
    @player = $player
    @player.move(params[:hand])
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @game = Game.new
    @game.winner(@player.moved)
    erb(:result)
  end
end
