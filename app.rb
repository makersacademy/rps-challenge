require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  def self.store_game(game)
    @game = game
  end

  def self.game
    @game
  end

  get '/' do
    erb(:index)
  end

  post '/' do
    p1 = Player.new(params[:p1_name])
    p2 = Player.new('Computer')
    RPS.store_game(Game.new(p1, p2))
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    RPS.game.p1.choose(params[:move])
    RPS.game.p2.choose_random
    redirect '/result'
  end

  get '/result' do
    if RPS.game.return_winner == 'tie'
      @winner = 'tie'
    else
      @winner = RPS.game.return_winner.name
    end
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
