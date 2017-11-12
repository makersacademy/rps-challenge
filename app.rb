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
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    if params[:player2] == ''
      @game = Game.create(player1, Computer.new)
    else
      @game = Game.create(player1, player2)
    end
    redirect '/play'
  end

  get '/play' do
    @player1 = @game.player1
    @player2 = @game.player2
    @winner = @game.winner
    erb(:play)
  end

  post '/player-2' do
    @game.set_choice(@game.player2, params[:choice2])
    @game.decider
    redirect '/play'
  end

  get '/reset' do
    @game.reset
    redirect '/play'
  end

  post '/game-on' do
    @game.set_choice(@game.player1, params[:choice1])
    if @game.player2.name == 'Siri'
      @game.player2.randomizer
      @game.decider
    end
    redirect '/play'
  end

  run! if app_file == $0
end
