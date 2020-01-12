require 'sinatra/base'
require './lib/rpsgame'
require './lib/player'

class Rps < Sinatra::Base
  before do
    @game = RpsGame.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:name])
    player2 = Player.new('Computer')
    @game = RpsGame.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    @game.select(@game.player1, params[:move])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0
end
