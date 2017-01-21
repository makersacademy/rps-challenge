require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    @game = Game.create(player1)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/fight' do
    @game = Game.instance
    @game.fight_with(params[:weapon])
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
