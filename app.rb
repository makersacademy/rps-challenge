require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:start_screen)
  end

  post '/names' do
    players_name = Player.new(params[:players_name])
    # @game.create(players_name)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
