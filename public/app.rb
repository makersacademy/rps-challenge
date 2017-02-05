require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  attr_reader :game, :choice1, :choice2

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @player1 = params[:player_1]
    @player2 = params[:player_2]
    player_1 = Player.new(@player1)
    player_2 = Player.new(@player2)
    @game = Game.create(player_1, player_2)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/rps' do
    @choice1 = params[:choice]
    game.player_1.choice(choice1)
    redirect '/game2'
  end

  get '/game2'do
    erb :game2
  end

  post '/rps2' do
    @choice2 = params[:choice]
    game.player_2.choice(choice2)
    game.choice
    game.winner
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
