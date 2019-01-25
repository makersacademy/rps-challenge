require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do
    @game = Game.instance
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_name])
    player2 = Player.new("Hal")
    @game = Game.create(player1, player2)
    redirect '/'
  end

  get '/play_game' do
    @game = Game.instance
    erb :game
  end

  post '/move' do
    move = params[:input]
    @game = Game.instance
    @game.player1.select_move(move)
    @game.computer_move
    @game.run_game
    redirect '/end'
  end

  get '/end' do
    @game = Game.instance
    erb :end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
