require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect to('/play')
  end

  get '/play' do
    @game = Game.instance
    @player_name = @game.player.name
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
