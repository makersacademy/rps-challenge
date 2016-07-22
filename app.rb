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
    player = Player.new(params[:players_name])
    @game = Game.create(player)
     redirect '/play'
  end

  get '/play' do
    # @player = @game.player.name
    erb(:play)
  end

  get '/result' do
    erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
