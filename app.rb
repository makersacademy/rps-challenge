require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    @game = Game.create(player, Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    @game.player_1.pick_move(params[:move].to_sym)
    @game.player_2.pick_move
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
