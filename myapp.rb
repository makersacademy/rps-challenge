require 'sinatra/base'
require './lib/player'
require './lib/game'


class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    # player = Player.new(params[:player])
    $game = Game.new(params[:player])
     redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/play'do
    @game = $game
    @game.player.choice(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb @game.result
  end

# # start the server if ruby file executed directly
  run! if app_file == $0
end