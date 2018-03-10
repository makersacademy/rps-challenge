require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/results'
require './lib/computer'

class Rps < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:name])
    player2 = Computer.new
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  post '/multiplayer' do
    player1 = Player.new(params[:name])
    player2 = Player.new('player 2')
    @game = Game.create(player1, player2)
    erb :multiplayer
  end

  post '/enter' do
    @game.player2.name = params[:name2]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/record' do
    results = Results.new(params[:choice])
    @game.record(results)
    redirect '/results'
  end

  get '/results' do
    computer = Computer.new
    @game.results.opponent(computer)
    erb :results
  end

  run! if app_file == $0
end
