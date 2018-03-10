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
    player = Player.new(params[:name])
    @game = Game.create(player)
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
