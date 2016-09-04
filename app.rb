require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
