require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/opponent'

class Rps < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game.player.choice = params[:choice]
    @game.opponent = Opponent.new
    @game.win_lose_draw
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  # start server if executed correctly
  run! if app_file == $0
end
