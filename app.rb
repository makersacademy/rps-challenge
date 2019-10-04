require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player_name])
    @game = Game.create(player1)
    redirect '/play'
  end
  
  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/winner' do
    @game = Game.instance
    @player1 = @game.player1
    @player2 = @game.player2
    @player1.move = params[:player_move]
    @player2.random_move
    @winner = @game.winner(@player1.move, @player2.move)
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end