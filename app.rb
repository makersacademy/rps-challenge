require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    @game.player.weapon = params[:weapon]
    redirect '/result'
  end

  get '/result' do
    @game.computer.weapon
    erb :result
  end

  run! if app_file == $0
end
