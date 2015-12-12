require 'sinatra/base'
require './lib/player'
require './lib/game'

class App < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player1 = Player.new(params[:name])
    $game = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/choose' do
    @game = $game
    erb(:choose)
  end

  post '/selection' do
    @game = $game
    @game.selection(params[:value])
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
