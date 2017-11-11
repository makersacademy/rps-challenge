require './lib/game'
require 'sinatra/base'

class Rps < Sinatra::Base
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
    @name = @game.player1.name
    @pl1_choice = @game.player1.choice
    @pl2_choice = @game.player2.choice
    @winner = @game.decider
    erb(:play)
  end

  post '/game-on' do
     @game.set_choice(@game.player1, params[:choice])
     @game.player2.randomizer
      redirect '/play'
  end

  run! if app_file == $0
end
