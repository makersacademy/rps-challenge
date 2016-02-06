require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Rps < Sinatra::Base
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player])
    $game = Game.new(player1)
    redirect '/play'
  end

  post '/rps' do
    @rps = params[:rps]
    player = $game.player1
    player.send("sel_" + @rps)
    redirect '/duel'
  end

  get '/play' do
    @player = $game.player1
    erb :play
  end

  get '/duel' do
    @player = $game.player1
    $game.auto_choose
    @pc = $game.player2
    @winner = $game.winner
    erb :duel
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
