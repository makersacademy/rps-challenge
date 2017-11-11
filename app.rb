require './lib/game'
require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions
  before do
  @game = Game.instance
end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player]),Computer.new)
    redirect '/play'
  end

  get '/play' do
    @player1 = @game.player1.name
    @player2 = @game.player2.name
    @pl1_choice = @game.player1.choice[:item]
    @pl2_choice = @game.player2.choice[:item]
    @winner = @game.winner
    erb(:play)
  end

  post '/game-on' do
     @game.set_choice(@game.player1, params[:choice])
     @game.player2.randomizer
     @game.decider
     redirect '/play'
  end

  run! if app_file == $0
end
