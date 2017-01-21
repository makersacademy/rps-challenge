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

  post '/names' do
    player_name = Player.new(params[:player_name])
    @game = Game.new(player_name)
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
