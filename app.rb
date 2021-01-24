require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  before do
    @player = Player.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = Player.create(params['player_1_name'])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    @player.move(params[:hand])
    redirect '/result'
  end

  get '/result' do
    @game = Game.new
    @game.winner(@player.moved)
    erb(:result)
  end
end
