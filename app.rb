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
    @game.player1.move = params[:move]
    @game.random_move(@game.player2)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  post '/add-win' do
    @game.winner == @game.player1 ? @game.player1.add_win : @game.player2.add_win
    redirect '/play'
  end

  run! if app_file == $0
end
