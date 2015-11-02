require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/choice' do
    $item = params[:choice]
    # $game = Game.new(item)
    redirect to('/game')
  end

  get '/game' do
    @item = $item
    @game = Game.new(@item)
    erb(:game)
    # @game = $game
    # @player = $player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
