require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    erb :play
  end

  post '/result' do
    @game.player.set_choice(params[:choice])
    @game.opponent.set_choice("Paper")
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
